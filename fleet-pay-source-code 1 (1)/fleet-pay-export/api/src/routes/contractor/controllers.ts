import { Request, Response } from "express";

import { BackendResponse } from "../../models/response";
import { Contractor } from "../../models/contractor";
import { ContractorDashboardSummary } from "../../models/contractor_dashboard_summary";
import { Transaction } from "../../models/transaction";
import { TransactionStatus } from "../../models/transaction_status";
import { TransactionRemark } from "../../models/transaction_remark";
import { FundRequestPreview } from "../../models/fund_request_preview";
import { NewFundRequest } from "../../models/new_fund_request";

// --- start imports code ---
import { PrismaClient } from "@prisma/client";
import dayjs from "dayjs";

import utc from "dayjs/plugin/utc"
dayjs.extend(utc)

import timezone from "dayjs/plugin/timezone"
dayjs.extend(timezone)

import {
  EmailTemplates,
  PaymentRequestEmailData,
  sendEmailWithTemplateId,
} from "../../utils/email_sender";
import { addInverval, validTimezone } from "../../utils/date";
import { randomString } from "../../utils/strings";
// --- end imports code ---

// --- start declarations code ---
const prisma = new PrismaClient();

// --- end declarations code ---

const getContractors = async (req: Request, res: Response) => {
  const response: BackendResponse<Contractor[]> = {
    code: 200,
  };

  try {
    // --- start get_contractors_logic code ---
    const userId = req.headers["userId"] as string;

    const contractors = await prisma.contractor.findMany({
      where: {
        userId: userId,
      },
      include: {
        company: true,
      },
    });

    response.result = contractors;
    // --- end get_contractors_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_contractors_error code ---

    // --- end get_contractors_error code ---
  }
  res.status(response.code).send(response)
}


const getContractorDashboard = async (req: Request, res: Response) => {
  const response: BackendResponse<ContractorDashboardSummary> = {
    code: 200,
  };
  const contractorId = req.query["contractorId"] as string;
  try {
    // --- start get_contractor_dashboard_logic code ---
    const userId = req.headers["userId"] as string;

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: contractorId,
        userId: userId,
      },
    });

    if (!contractor) {
      response.code = 403;
      response.error = "You are not allowed to view the dashboard";
      res.send(response);
      return;
    }

    const paymentInterval = contractor.paymentStructure.paymentInterval

    const startDate = dayjs(contractor.paymentStructure.cycleStartDate)
    const endDate = dayjs(contractor.paymentStructure.cycleEndDate) // <- bug

    if (endDate.isBefore(dayjs()) || startDate.isAfter(dayjs())) {
      // Either the payment cycle ended or the cycle has not started yet
      response.result = {
        totalFunds: 0,
        approvedFunds: 0,
        pendingFunds: 0,
        availableFund: 0,
        usedFunds: 0,
      }
      return res.send(response);
    }

    let currentCycleStartDate = startDate
    let currentCycleEndDate = addInverval(startDate, paymentInterval)

    while (dayjs().isBefore(currentCycleStartDate)) {
      currentCycleStartDate = currentCycleEndDate;
      currentCycleEndDate = addInverval(currentCycleStartDate, paymentInterval);
    }

    const transactions = await prisma.transaction.findMany({
      where: {
        contractorId: contractorId,
        createdAt: {
          gte: currentCycleStartDate.toDate(),
          lt: currentCycleEndDate.toDate(),
        },
        status: {
          notIn: ['DENIED', 'FAILED']
        }
      },
    });

    let totalFunds;
    if (contractor.fundingSetting.fundingLimitType == "FIXED_AMOUNT") {
      totalFunds = contractor.fundingSetting.fundingLimit;
    } else {
      totalFunds = (contractor.fundingSetting.fundingAmount * contractor.fundingSetting.fundingLimit) / 100;
    }

    let pendingFunds = 0;
    let approvedFunds = 0;

    transactions.forEach((transaction) => {
      if (transaction.status == "PENDING") {
        pendingFunds += transaction.requestedAmount;
      } else if (transaction.status == "APPROVED") {
        approvedFunds += transaction.requestedAmount;
      }
    });


    const usedFunds = approvedFunds + pendingFunds;
    const availableFund = Math.max(totalFunds - usedFunds, 0);

    response.result = {
      totalFunds: totalFunds,
      availableFund: availableFund,
      approvedFunds: approvedFunds,
      pendingFunds: pendingFunds,
      usedFunds: usedFunds,
    }
    // --- end get_contractor_dashboard_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_contractor_dashboard_error code ---

    // --- end get_contractor_dashboard_error code ---
  }
  res.status(response.code).send(response)
}


const getContractorTransactions = async (req: Request, res: Response) => {
  const response: BackendResponse<Transaction[]> = {
    code: 200,
  };
  const contractorId = req.query["contractorId"] as string;
  try {
    // --- start get_contractor_transactions_logic code ---
    const userId = req.headers["userId"] as string;

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: contractorId,
        userId: userId,
      },
    });

    if (!contractor) {
      response.code = 403;
      response.error =
        "You are not allowed to view transactions for the given contractor id";
      res.send(response);
      return;
    }

    const transactions = await prisma.transaction.findMany({
      where: {
        contractorId: contractorId,
      },
      include: {
        remarks: {
          orderBy: {
            createdAt: "desc",
          }
          ,
          include: {
            user: true,
          }
        },
        company: true,
      },
    });
    response.result = transactions;
    // --- end get_contractor_transactions_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_contractor_transactions_error code ---

    // --- end get_contractor_transactions_error code ---
  }
  res.status(response.code).send(response)
}


const getContractorTransaction = async (req: Request, res: Response) => {
  const response: BackendResponse<Transaction> = {
    code: 200,
  };
  const transactionId = req.params["transactionId"] as string;
  try {
    // --- start get_contractor_transaction_logic code ---
    const userId = req.headers["userId"] as string;

    const transaction = await prisma.transaction.findFirst({
      where: {
        id: transactionId,
      },
      include: {
        remarks: true,
        company: true,
      },
    });

    if (!transaction) {
      response.code = 404;
      response.error = "Transaction not found";
      res.send(response);
      return;
    }

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: transaction.contractorId,
        userId: userId,
      },
    });

    if (!contractor) {
      response.code = 403;
      response.error = "You are not allowed to view this transaction";
      res.send(response);
      return;
    }

    response.result = transaction;

    // --- end get_contractor_transaction_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start get_contractor_transaction_error code ---

    // --- end get_contractor_transaction_error code ---
  }
  res.status(response.code).send(response)
}


const updateContractorTransactionStatus = async (req: Request, res: Response) => {
  const response: BackendResponse<Transaction> = {
    code: 200,
  };
  const transactionId = req.params["transactionId"] as string;
  const status = req.params["status"] as TransactionStatus;
  const remarks = req.params["remarks"] as string;
  try {
    // --- start update_contractor_transaction_status_logic code ---
    const userId = req.headers["userId"] as string;

    const transaction = await prisma.transaction.findFirst({
      where: {
        id: transactionId,
      },
      include: {
        remarks: true,
        company: true,
      },
    });

    if (!transaction) {
      response.code = 404;
      response.error = "Transaction not found";
      res.send(response);
      return;
    }

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: transaction.contractorId,
        userId: userId,
      },
    });

    if (!contractor) {
      response.code = 403;
      response.error = "You are not allowed to update this transaction";
      res.send(response);
      return;
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

    response.result = updatedTransaction;

    // --- end update_contractor_transaction_status_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start update_contractor_transaction_status_error code ---

    // --- end update_contractor_transaction_status_error code ---
  }
  res.status(response.code).send(response)
}


const addContractorRemarkOnTransaction = async (req: Request, res: Response) => {
  const response: BackendResponse<TransactionRemark> = {
    code: 200,
  };
  const transactionId = req.params["transactionId"] as string;
  const remarks = req.body["remarks"] as string;
  try {
    // --- start add_contractor_remark_on_transaction_logic code ---

    const userId = req.headers["userId"] as string;

    const transaction = await prisma.transaction.findFirst({
      where: {
        id: transactionId,
      },
      include: {
        remarks: true,
        company: true,
      },
    });

    if (!transaction) {
      response.code = 404;
      response.error = "Transaction not found";
      res.send(response);
      return;
    }

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: transaction.contractorId,
        userId: userId,
      },
    });

    if (!contractor) {
      response.code = 403;
      response.error = "You are not allowed to update this transaction";
      res.send(response);
      return;
    }

    const remark = await prisma.transactionRemark.create({
      data: {
        remarks: remarks,
        createdAt: new Date(),
        transactionId: transactionId,
        userId: userId,
      },
    });

    response.result = remark;
    // --- end add_contractor_remark_on_transaction_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start add_contractor_remark_on_transaction_error code ---

    // --- end add_contractor_remark_on_transaction_error code ---
  }
  res.status(response.code).send(response)
}


const previewFundRequest = async (req: Request, res: Response) => {
  const response: BackendResponse<FundRequestPreview> = {
    code: 200,
  };
  const request = req.body["request"] as NewFundRequest;
  try {
    // --- start preview_fund_request_logic code ---
    const userId = req.headers["userId"] as string;

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: request.contractorId,
        userId: userId,
      },
    });

    if (!contractor) {
      response.code = 403;
      response.error =
        "You are not allowed to create a transaction for the given company";
      res.send(response);
      return;
    }

    const fundingSetting = contractor.fundingSetting;
    let transactionFee = 0;
    if (fundingSetting.fundingLimitType == "FIXED_AMOUNT") {
      if (request.amount > fundingSetting.fundingLimit) {
        response.code = 400;
        response.error = "You cannot request fund over your limit";
        res.send(response);
        return;
      }
      transactionFee = fundingSetting.transactionFee;
    } else if (fundingSetting.fundingLimitType == "PERCENTAGE") {
      const allowedLimit =
        (contractor.pendingInvoiceAmount * fundingSetting.fundingLimit) / 100;
      if (request.amount > allowedLimit) {
        response.code = 400;
        response.error = "You cannot request fund over your limit";
        res.send(response);
        return;
      }
      transactionFee = (request.amount * fundingSetting.transactionFee) / 100;
    }

    const postageFee = fundingSetting.postageFee;

    const netAmount = request.amount - transactionFee - postageFee;

    response.result = {
      companyId: contractor.companyId,
      contractorId: request.contractorId,
      requestedAmount: request.amount,
      fee: transactionFee,
      postageFee: postageFee,
      netAmount: netAmount,
    };

    // --- end preview_fund_request_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start preview_fund_request_error code ---

    // --- end preview_fund_request_error code ---
  }
  res.status(response.code).send(response)
}


const requestFund = async (req: Request, res: Response) => {
  const response: BackendResponse<Transaction> = {
    code: 200,
  };
  const request = req.body["request"] as NewFundRequest;
  try {
    // --- start request_fund_logic code ---
    const userId = req.headers["userId"] as string;

    const contractor = await prisma.contractor.findFirst({
      where: {
        id: request.contractorId,
        userId: userId,
      },
      include: {
        company: true,
      },
    });

    if (!contractor) {
      response.code = 403;
      response.error =
        "You are not allowed to create a transaction for the given company";
      res.send(response);
      return;
    }
    const fundingSetting = contractor.fundingSetting;
    let transactionFee = 0;
    if (fundingSetting.fundingLimitType == "FIXED_AMOUNT") {
      if (request.amount > fundingSetting.fundingLimit) {
        response.code = 400;
        response.error = "You cannot request fund over your limit";
        res.send(response);
        return;
      }
      transactionFee = fundingSetting.transactionFee;
    } else if (fundingSetting.fundingLimitType == "PERCENTAGE") {
      const allowedLimit =
        (contractor.pendingInvoiceAmount * fundingSetting.fundingLimit) / 100;
      if (request.amount > allowedLimit) {
        response.code = 400;
        response.error = "You cannot request fund over your limit";
        res.send(response);
        return;
      }
      transactionFee = (request.amount * fundingSetting.transactionFee) / 100;
    }

    const postageFee = fundingSetting.postageFee;

    const netAmount = request.amount - transactionFee - postageFee;
    const createdAt = new Date();
    const transaction = await prisma.transaction.create({
      data: {
        id: randomString(10).toUpperCase(),
        createdAt: createdAt,
        requestedAmount: request.amount,
        fee: transactionFee,
        postageFee: postageFee,
        netAmount: netAmount,
        status: "PENDING",
        userId: userId,
        companyId: contractor.companyId,
        contractorId: request.contractorId,
        remarks: {
          create: {
            createdAt: createdAt,
            remarks: "Fund requested",
            userId: userId,
            status: "PENDING",
          },
        },
      },
      include: {
        remarks: true,
        company: true,
      },
    });
    await sendEmailWithTemplateId({
      to: contractor.company?.notificationSettings?.emails ?? [],
      templateId: EmailTemplates.PAYMENT_REQUEST,
      templateValues: {
        amount_requested: `$${request.amount}`,
        company_name: contractor.name ?? "",
        request_datetime: dayjs(new Date()).tz(validTimezone(contractor.company?.businessHours?.timezone)).format('MM/DD/YYYY hh:mm A'),
        action_url: "https://app.fleetpaid.com/transactions/pending",
        transaction_id: transaction.id,
      } as PaymentRequestEmailData,
    });

    response.result = transaction;
    // --- end request_fund_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start request_fund_error code ---
    console.log(e);
    // --- end request_fund_error code ---
  }
  res.status(response.code).send(response)
}

export default {
  getContractors,
  getContractorDashboard,
  getContractorTransactions,
  getContractorTransaction,
  updateContractorTransactionStatus,
  addContractorRemarkOnTransaction,
  previewFundRequest,
  requestFund,
}
