import { Request, Response } from "express";

import { BackendResponse } from "../../models/response";
import { CompanyUser } from "../../models/company_user";
import { User } from "../../models/user";
import { Role } from "../../models/role";
import { NewUser } from "../../models/new_user";
import { Contractor } from "../../models/contractor";
import { NewContractorRequest } from "../../models/new_contractor_request";
import { PaginatedTransactions } from "../../models/paginated_transactions";
import { PageRequest } from "../../models/page_request";
import { TransactionRequestFilter } from "../../models/transaction_request_filter";
import { Transaction } from "../../models/transaction";
import { TransactionStatus } from "../../models/transaction_status";
import { TransactionRemark } from "../../models/transaction_remark";
import { Company } from "../../models/company";
import { NewCompany } from "../../models/new_company";

// --- start imports code ---
import { PrismaClient } from "@prisma/client";
import * as bcrypt from "bcrypt";
import dayjs from "dayjs";
import { validTimezone } from "../../utils/date";
import {
  ApprovedEmailData,
  EmailTemplates,
  RejectedEmailData,
  sendEmailWithTemplateId,
  UserInviteEmailData,
} from "../../utils/email_sender";
import { sendNotification } from "../../utils/notification_sender";
import { uploadFile } from "../../utils/storage";
import { randomString } from "../../utils/strings";
// --- end imports code ---

// --- start declarations code ---
const prisma = new PrismaClient();
// --- end declarations code ---

const getCompaniesWithMyRole = async (req: Request, res: Response) => {
  const response: BackendResponse<CompanyUser[]> = {
    code: 200,
  };

  try {
    // --- start get_companies_with_my_role_logic code ---
    const userId = req.headers["userId"] as string;

    response.result = await prisma.companyUser.findMany({
      where: {
        userId: userId,
      },
      include: {
        company: true,
      },
    });

    // --- end get_companies_with_my_role_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_companies_with_my_role_error code ---
    console.log(e);
    // --- end get_companies_with_my_role_error code ---
  }
  res.status(response.code).send(response)
}


const changeSelectedCompany = async (req: Request, res: Response) => {
  const response: BackendResponse<User> = {
    code: 200,
  };
  const companyId = req.body["companyId"] as string;
  try {
    // --- start change_selected_company_logic code ---
    const userId = req.headers["userId"] as string;
    const companyUser = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: companyId,
      },
    });

    if (!companyUser) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    response.result = await prisma.user.update({
      where: {
        id: userId,
      },
      data: {
        selectedCompanyId: companyId,
      },
    });
    // --- end change_selected_company_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start change_selected_company_error code ---

    // --- end change_selected_company_error code ---
  }
  res.status(response.code).send(response)
}


const getCompanyUsers = async (req: Request, res: Response) => {
  const response: BackendResponse<CompanyUser[]> = {
    code: 200,
  };
  const companyId = req.query["companyId"] as string;
  try {
    // --- start get_company_users_logic code ---
    const userId = req.headers["userId"] as string;

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: companyId,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    response.result = await prisma.companyUser.findMany({
      where: {
        companyId: companyId,
      },
      include: {
        user: true,
      },
    });

    // --- end get_company_users_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_company_users_error code ---

    // --- end get_company_users_error code ---
  }
  res.status(response.code).send(response)
}


const addCompanyUser = async (req: Request, res: Response) => {
  const response: BackendResponse<CompanyUser> = {
    code: 200,
  };
  const companyId = req.body["companyId"] as string;
  const role = req.body["role"] as Role;
  const user = req.body["user"] as NewUser;
  try {
    // --- start add_company_user_logic code ---
    const userId = req.headers["userId"] as string;
    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: companyId,
      },
      include: {
        user: true,
        company: true,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }
    const allowedRoles: Role[] = ["ADMIN", "HR", "MANAGER"];
    if (!allowedRoles.includes(companyAdmin.role)) {
      response.code = 403;
      response.error =
        "Only users with the role ADMIN, HR or MANAGER can perform this action";
      return res.send(response);
    }

    var eUser: User;

    const existingUser = await prisma.user.findFirst({
      where: {
        email: user.email,
      },
    });

    if (existingUser) {
      eUser = existingUser;
    } else {
      const randomPassword = randomString(12);
      const salt = await bcrypt.genSalt(10);
      const hashedPassword = await bcrypt.hash(randomPassword, salt);

      const authUser = await prisma.authUser.create({
        data: {
          username: user.email,
          passwordHash: hashedPassword,
          salt: salt,
        },
      });

      eUser = await prisma.user.create({
        data: {
          id: authUser.id,
          email: authUser.username,
          name: user.name,
          multiFactorAuthEnabled: false,
          username: authUser.username,
          profilePicture: user.profilePicture,
          phoneNumber: user.phoneNumber,
          selectedCompanyId: companyId,
          status: "CHANGE_PASSWORD",
        },
      });

      await sendEmailWithTemplateId({
        to: user.email,
        templateId: EmailTemplates.USER_INVITE,
        templateValues: {
          name: user.name,
          role: role,
          inviter: companyAdmin.user?.name!,
          company: companyAdmin.company?.name!,
          username: authUser.username,
          password: randomPassword,
          action_url: "https://app.fleetpaid.com/login",
        } as UserInviteEmailData,
      });
    }

    const newCompanyAdmin = await prisma.companyUser.create({
      data: {
        status: "INVITED",
        userId: eUser.id,
        companyId: companyId,
        role: role,
      },
      include: {
        company: true,
        user: true,
      },
    });

    response.result = {
      id: newCompanyAdmin.id,
      status: newCompanyAdmin.status,
      role: newCompanyAdmin.role,
      companyId: newCompanyAdmin.companyId,
      userId: eUser.id,
      user: newCompanyAdmin.user,
      company: newCompanyAdmin.company,
    };

    // --- end add_company_user_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start add_company_user_error code ---
    console.log(e);
    // --- end add_company_user_error code ---
  }
  res.status(response.code).send(response)
}


const getCompanyUser = async (req: Request, res: Response) => {
  const response: BackendResponse<CompanyUser> = {
    code: 200,
  };
  const adminId = req.params["adminId"] as string;
  try {
    // --- start get_company_user_logic code ---
    // --- end get_company_user_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_company_user_error code ---

    // --- end get_company_user_error code ---
  }
  res.status(response.code).send(response)
}


const updateCompanyUser = async (req: Request, res: Response) => {
  const response: BackendResponse<CompanyUser> = {
    code: 200,
  };
  const adminId = req.params["adminId"] as string;
  const admin = req.body["admin"] as CompanyUser;
  try {
    // --- start update_company_user_logic code ---
    // --- end update_company_user_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start update_company_user_error code ---

    // --- end update_company_user_error code ---
  }
  res.status(response.code).send(response)
}


const deleteCompanyUser = async (req: Request, res: Response) => {
  const response: BackendResponse<string> = {
    code: 200,
  };
  const adminId = req.params["adminId"] as string;
  try {
    // --- start delete_company_user_logic code ---
    // --- end delete_company_user_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start delete_company_user_error code ---

    // --- end delete_company_user_error code ---
  }
  res.status(response.code).send(response)
}


const getCompanyContractors = async (req: Request, res: Response) => {
  const response: BackendResponse<Contractor[]> = {
    code: 200,
  };
  const companyId = req.query["companyId"] as string;
  try {
    // --- start get_company_contractors_logic code ---
    const userId = req.headers["userId"] as string;
    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: companyId,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    let contractors = await prisma.contractor.findMany({
      where: {
        companyId: companyId,
      },
    });

    contractors = await Promise.all(
      contractors.map(async (c) => {
        const transaction = await prisma.transaction.findFirst({
          where: {
            contractorId: c.id,
            status: {
              in: ["PENDING", "APPROVED"],
            },
          },
          orderBy: {
            createdAt: "desc",
          },
        });
        c.lasPaymentRequestDate = transaction?.createdAt ?? null;
        return c;
      })
    );

    response.result = contractors;

    // --- end get_company_contractors_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_company_contractors_error code ---

    // --- end get_company_contractors_error code ---
  }
  res.status(response.code).send(response)
}


const addCompanyContractor = async (req: Request, res: Response) => {
  const response: BackendResponse<Contractor> = {
    code: 200,
  };
  const parentCompanyId = req.body["parentCompanyId"] as string;
  const request = req.body["request"] as NewContractorRequest;
  try {
    // --- start add_company_contractor_logic code ---
    const userId = req.headers["userId"] as string;

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: parentCompanyId,
      },
      include: {
        user: true,
        company: true,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }
    const allowedRoles: Role[] = ["ADMIN", "HR", "MANAGER"];

    if (!allowedRoles.includes(companyAdmin.role)) {
      response.code = 403;
      response.error =
        "Only users with the role ADMIN, HR or MANAGER can perform this action";

      return res.send(response);
    }

    if (request.fundingSetting.fundingLimitType == "FIXED_AMOUNT") {
      if (
        request.fundingSetting.fundingLimit >
        request.fundingSetting.fundingAmount
      ) {
        response.code = 400;
        response.error =
          "Funding limit cannot be greater then the funding amount";
        return res.send(response);
      }
    } else if (request.fundingSetting.fundingLimitType == "PERCENTAGE") {
      if (request.fundingSetting.fundingLimit > 100) {
        response.code = 400;
        response.error = "Funding limit cannot be greater than 100%.";
        return res.send(response);
      }
    }

    var eUser: User;

    const existingUser = await prisma.user.findFirst({
      where: {
        email: request.user.email,
      },
    });

    if (existingUser) {
      eUser = existingUser;
    } else {
      const randomPassword = randomString(12);
      const salt = await bcrypt.genSalt(10);
      const hashedPassword = await bcrypt.hash(randomPassword, salt);

      const authUser = await prisma.authUser.create({
        data: {
          username: request.user.email,
          passwordHash: hashedPassword,
          salt: salt,
        },
      });

      eUser = await prisma.user.create({
        data: {
          id: authUser.id,
          email: authUser.username,
          name: request.user.name,
          multiFactorAuthEnabled: false,
          username: authUser.username,
          profilePicture: request.user.profilePicture,
          phoneNumber: request.user.phoneNumber,
          status: "CHANGE_PASSWORD",
        },
      });

      await sendEmailWithTemplateId({
        to: request.user.email,
        templateId: EmailTemplates.USER_INVITE,
        templateValues: {
          name: request.user.name,
          role: "CONTRACTOR",
          inviter: companyAdmin.user?.name,
          company: companyAdmin.company?.name,
          username: authUser.username,
          password: randomPassword,
        } as UserInviteEmailData,
      });
    }
    const contractor = await prisma.contractor.create({
      data: {
        name: request.name,
        companyId: parentCompanyId,
        fundingSetting: request.fundingSetting,
        paymentStructure: request.paymentStructure,
        userId: eUser.id,
        pendingInvoiceAmount: 0,
        emails: request.emails,
        phoneNumbers: request.phoneNumbers,
        primaryContact: {
          name: request.user.name,

          email: request.user.email,
          phone: request.user.phoneNumber,
        },
        deleted: false,
      },
    });

    response.result = contractor;
    // --- end add_company_contractor_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start add_company_contractor_error code ---
    console.log(e);

    // --- end add_company_contractor_error code ---
  }
  res.status(response.code).send(response)
}


const getCompanyContractor = async (req: Request, res: Response) => {
  const response: BackendResponse<Contractor> = {
    code: 200,
  };
  const contractorId = req.params["contractorId"] as string;
  try {
    // --- start get_company_contractor_logic code ---
    const userId = req.headers["userId"] as string;

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: contractorId,
      },
    });

    if (!contractor) {
      response.code = 404;
      response.error = "Contractor not found";
      return res.send(response);
    }

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: contractor.companyId,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    response.result = contractor;

    // --- end get_company_contractor_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_company_contractor_error code ---

    // --- end get_company_contractor_error code ---
  }
  res.status(response.code).send(response)
}


const updateCompanyContractor = async (req: Request, res: Response) => {
  const response: BackendResponse<Contractor> = {
    code: 200,
  };
  const contractorId = req.params["contractorId"] as string;
  const contractor = req.body["contractor"] as Contractor;
  try {
    // --- start update_company_contractor_logic code ---
    const userId = req.headers["userId"] as string;

    const existingContractor = await prisma.contractor.findFirst({
      where: {
        id: contractorId,
      },
    });

    if (!existingContractor) {
      response.code = 404;
      response.error = "Contractor not found";
      return res.send(response);
    }

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: existingContractor.companyId,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    const allowedRoles: Role[] = ["ADMIN", "HR", "MANAGER"];

    if (!allowedRoles.includes(companyAdmin.role)) {
      response.code = 403;
      response.error =
        "Only users with the role ADMIN, HR or MANAGER can perform this action";
      return res.send(response);
    }

    response.result = await prisma.contractor.update({
      where: {
        id: contractorId,
      },
      data: {
        name: contractor.name,
        fundingSetting: contractor.fundingSetting,
        paymentStructure: contractor.paymentStructure,
        primaryContact: {
          update: {
            name: contractor.primaryContact.name,
            email: contractor.primaryContact.email,
            phone: contractor.primaryContact.phone,
          },
        },
      },
    });

    // --- end update_company_contractor_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start update_company_contractor_error code ---

    // --- end update_company_contractor_error code ---
  }
  res.status(response.code).send(response)
}


const deleteCompanyContractor = async (req: Request, res: Response) => {
  const response: BackendResponse<string> = {
    code: 200,
  };
  const contractorId = req.params["contractorId"] as string;
  try {
    // --- start delete_company_contractor_logic code ---
    const userId = req.headers["userId"] as string;

    const existingContractor = await prisma.contractor.findFirst({
      where: {
        id: contractorId,
      },
    });

    if (!existingContractor) {
      response.code = 404;
      response.error = "Contractor not found";
      return res.send(response);
    }

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: existingContractor.companyId,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    const allowedRoles: Role[] = ["ADMIN", "HR", "MANAGER"];

    if (!allowedRoles.includes(companyAdmin.role)) {
      response.code = 403;
      response.error =
        "Only users with the role ADMIN, HR or MANAGER can perform this action";
      return res.send(response);
    }

    await prisma.contractor.update({
      where: {
        id: contractorId,
      },
      data: {
        deleted: true,
      },
    });

    response.result = "Contractor deleted successfully";

    // --- end delete_company_contractor_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start delete_company_contractor_error code ---

    // --- end delete_company_contractor_error code ---
  }
  res.status(response.code).send(response)
}


const getCompanyTransactions = async (req: Request, res: Response) => {
  const response: BackendResponse<PaginatedTransactions> = {
    code: 200,
  };
  const companyId = req.body["companyId"] as string;
  const pageDetail = req.body["pageDetail"] as PageRequest;
  const filter = req.body["filter"] as TransactionRequestFilter;
  try {
    // --- start get_company_transactions_logic code ---

    const userId = req.headers["userId"] as string;

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        companyId: companyId,
        userId: userId,
      },
    });
    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }
    const filters: any = {
      companyId: companyId,
    };

    if (filter.contractorId) {
      filters["contractorId"] = filter.contractorId;
    }

    if (filter.status) {
      filters["status"] = { in: filter.status };
    }

    if (filter.startDate || filter.endDate) {
      const dateFilter: any = {};
      if (filter.startDate) {
        dateFilter.gte = filter.startDate;
      }
      if (filter.endDate) {
        dateFilter.lte = filter.endDate;
      }
      filters["createdAt"] = dateFilter;
    }

    const transactions = await prisma.transaction.findMany({
      take: pageDetail.size,
      skip: (pageDetail.page - 1) * pageDetail.size,
      where: filters,
      orderBy: {
        createdAt: "desc",
      },
      include: {
        contractor: true,
        remarks: {
          orderBy: {
            createdAt: "desc",
          },
          include: {
            user: true,
          },
        },
      },
    });

    const totalTransactions = await prisma.transaction.count({
      where: filters,
    });

    response.result = {
      id: "random-response",
      metadata: {
        next: totalTransactions > pageDetail.page * pageDetail.size,
        previous: pageDetail.page > 1,
        page: pageDetail.page,
        size: pageDetail.size,
        total: totalTransactions,
      },
      transactions,
    };

    // --- end get_company_transactions_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_company_transactions_error code ---

    // --- end get_company_transactions_error code ---
  }
  res.status(response.code).send(response)
}


const getCompanyTransaction = async (req: Request, res: Response) => {
  const response: BackendResponse<Transaction> = {
    code: 200,
  };
  const transactionId = req.params["transactionId"] as string;
  try {
    // --- start get_company_transaction_logic code ---
    const userId = req.headers["userId"] as string;

    const transaction = await prisma.transaction.findFirst({
      where: {
        id: transactionId,
      },
      include: {
        remarks: {
          orderBy: {
            createdAt: "desc",
          },
          include: {
            user: true,
          },
        },
      },
    });

    if (!transaction) {
      response.code = 404;
      response.error = "Transaction not found!";
      return res.send(response);
    }

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: transaction.companyId,
      },
    });
    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    response.result = transaction;

    // --- end get_company_transaction_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_company_transaction_error code ---

    // --- end get_company_transaction_error code ---
  }
  res.status(response.code).send(response)
}


const updateCompanyTransactionStatus = async (req: Request, res: Response) => {
  const response: BackendResponse<Transaction> = {
    code: 200,
  };
  const transactionId = req.params["transactionId"] as string;
  const status = req.body["status"] as TransactionStatus;
  const remarks = req.body["remarks"] as string;
  try {
    // --- start update_company_transaction_status_logic code ---
    const userId = req.headers["userId"] as string;
    const transaction = await prisma.transaction.findFirst({
      where: {
        id: transactionId,
      },
      include: {
        contractor: true,
        company: true,
      },
    });

    if (!transaction) {
      response.code = 404;
      response.error = "Transaction not found!";
      return res.send(response);
    }

    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: transaction.companyId,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    const authorizedRoles: Role[] = ["ADMIN", "FINANCE", "MANAGER"];
    if (!authorizedRoles.includes(companyAdmin.role)) {
      response.code = 403;
      response.error =
        "You are not authorized to perform this action. Only users with the role ADMIN, FINANCE or MANAGER can perform this action";
      return res.send(response);
    }

    const updatedTransaction = await prisma.transaction.update({
      where: {
        id: transactionId,
      },
      data: {
        status: status,
        remarks: {
          create: {
            remarks: remarks,
            createdAt: new Date(),
            status: status,
            userId: userId,
          },
        },
      },
      include: {
        remarks: true,
        company: true,
      },
    });


    if (status === "APPROVED") {
      await sendEmailWithTemplateId({
        to: transaction.contractor?.emails ?? [],
        templateId: EmailTemplates.PAYMENT_APPROVED,
        templateValues: {
          amount_approved: updatedTransaction.requestedAmount.toString(),
          approval_datetime: dayjs(new Date())
            .tz(
              validTimezone(updatedTransaction.company?.businessHours?.timezone)
            )
            .format("MM/DD/YYYY hh:mm A"),
          company: transaction.company?.name ?? "",
          company_name: transaction.contractor?.name ?? "",
          transaction_id: updatedTransaction.id,
        } as ApprovedEmailData,
      });

      await sendNotification(
        {
          userId: transaction.userId,
          title: "APPROVED",
          message: "Your Funding has been approved",
          action: updatedTransaction.id,
        }
      );
    } else if (status === "DENIED") {
      await sendEmailWithTemplateId({
        to: transaction.contractor?.emails ?? [],
        templateId: EmailTemplates.PAYMENT_REJECTED,
        templateValues: {
          amount_requested: "$" + updatedTransaction.requestedAmount,
          company: transaction.company?.name ?? "",
          company_name: transaction.contractor?.name ?? "",
          rejection_datetime: dayjs(new Date())
            .tz(
              validTimezone(updatedTransaction.company?.businessHours?.timezone)
            )
            .format("MM/DD/YYYY hh:mm A"),
          rejection_reason: remarks,
          transaction_id: updatedTransaction.id,
        } as RejectedEmailData,
      });
      await sendNotification(
        {
          userId: transaction.userId,
          title: "DENIED",
          message: "Your Funding has been denied",
          action: updatedTransaction.id,
        }
      );
    }

    response.result = updatedTransaction;

    // --- end update_company_transaction_status_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start update_company_transaction_status_error code ---

    // --- end update_company_transaction_status_error code ---
  }
  res.status(response.code).send(response)
}


const addCompanyRemarkOnTransaction = async (req: Request, res: Response) => {
  const response: BackendResponse<TransactionRemark> = {
    code: 200,
  };
  const transactionId = req.params["transactionId"] as string;
  const remarks = req.body["remarks"] as string;
  try {
    // --- start add_company_remark_on_transaction_logic code ---
    // --- end add_company_remark_on_transaction_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start add_company_remark_on_transaction_error code ---

    // --- end add_company_remark_on_transaction_error code ---
  }
  res.status(response.code).send(response)
}


const getCompany = async (req: Request, res: Response) => {
  const response: BackendResponse<Company> = {
    code: 200,
  };
  const companyId = req.params["companyId"] as string;
  try {
    // --- start get_company_logic code ---
    const userId = req.headers["userId"] as string;
    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: companyId,
      },
      include: {
        company: true,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    response.result = companyAdmin.company!;

    // --- end get_company_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_company_error code ---

    // --- end get_company_error code ---
  }
  res.status(response.code).send(response)
}


const updateCompany = async (req: Request, res: Response) => {
  const response: BackendResponse<Company> = {
    code: 200,
  };
  const companyId = req.params["companyId"] as string;
  const company = req.body["company"] as NewCompany;
  try {
    // --- start update_company_logic code ---
    const userId = req.headers["userId"] as string;
    const companyAdmin = await prisma.companyUser.findFirst({
      where: {
        userId: userId,
        companyId: companyId,
      },
    });

    if (!companyAdmin) {
      response.code = 403;
      response.error = "You are not authorized to perform this action";
      return res.send(response);
    }

    if (companyAdmin.role !== "ADMIN") {
      response.code = 403;
      response.error = "Only users with the role ADMIN can perform this action";
      return res.send(response);
    }

    if (company.profilePicture) {
      company.profilePicture = await uploadFile(
        `company/${companyId}/profile_picture`,
        company.profilePicture
      );
    }
    response.result = await prisma.company.update({
      where: {
        id: companyId,
      },
      data: {
        name: company.name,
        businessHours: company.businessHours ?? undefined,
        profilePicture: company.profilePicture ?? undefined,
        emails: company.emails ?? undefined,
        phoneNumbers: company.phoneNumbers ?? undefined,
        notificationSettings: company.notificationSettings ?? undefined,
      },
    });

    // --- end update_company_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start update_company_error code ---

    // --- end update_company_error code ---
  }
  res.status(response.code).send(response)
}

export default {
  getCompaniesWithMyRole,
  changeSelectedCompany,
  getCompanyUsers,
  addCompanyUser,
  getCompanyUser,
  updateCompanyUser,
  deleteCompanyUser,
  getCompanyContractors,
  addCompanyContractor,
  getCompanyContractor,
  updateCompanyContractor,
  deleteCompanyContractor,
  getCompanyTransactions,
  getCompanyTransaction,
  updateCompanyTransactionStatus,
  addCompanyRemarkOnTransaction,
  getCompany,
  updateCompany,
}
