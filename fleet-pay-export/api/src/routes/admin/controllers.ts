import { Request, Response } from "express";

import { BackendResponse } from "../../models/response";
import { CompanyUser } from "../../models/company_user";
import { NewCompany } from "../../models/new_company";
import { NewUser } from "../../models/new_user";

// --- start imports code ---
import { PrismaClient } from "@prisma/client";
import * as bcrypt from "bcrypt";
import { User } from "../../models/user";
import {
  EmailTemplates,
  sendEmailWithTemplateId,
  UserInviteEmailData,
} from "../../utils/email_sender";
import { randomString } from "../../utils/strings";

// --- end imports code ---

// --- start declarations code ---
const prisma = new PrismaClient();

// --- end declarations code ---

const onboardCompany = async (req: Request, res: Response) => {
  const response: BackendResponse<CompanyUser> = {
    code: 200,
  };
  const company = req.body["company"] as NewCompany;
  const user = req.body["user"] as NewUser;
  try {
    // --- start onboard_company_logic code ---
    const userId = req.headers["userId"] as string;

    const authUser = await prisma.authUser.findFirst({
      where: {
        id: userId,
      },
    });
    if (!(authUser?.superAdmin ?? false)) {
      response.code = 401;
      response.error = "Unauthorized, only super admin can onboard companies.";
      res.status(response.code).send(response);
      return;
    }

    // TODO check if the user is super admin

    const newCompany = await prisma.company.create({
      data: {
        name: company.name,
        emails: company.emails ?? undefined,
        phoneNumbers: company.phoneNumbers ?? undefined,
        profilePicture: company.profilePicture ?? undefined,
        accountingDepartmentContacts:
          company.accountingDepartmentContact ?? undefined,
        notificationSettings: company.notificationSettings,
        businessHours: company.businessHours,
      },
    });
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
          selectedCompanyId: newCompany.id,
          status: "CHANGE_PASSWORD"
        },
      });

      await sendEmailWithTemplateId({
        to: user.email,
        templateId: EmailTemplates.USER_INVITE,
        templateValues: {
          name: user.name,
          role: "Company Admin",
          inviter: "FleetPay",
          company: newCompany?.name!,
          username: authUser.username,
          password: randomPassword,
          action_url: "https://app.fleetpaid.com/login",
        } as UserInviteEmailData,
      });
    }

    const companyUser = await prisma.companyUser.create({
      data: {
        status: "INVITED",
        userId: eUser.id,
        companyId: newCompany.id,
        role: "ADMIN",
      },
      include: {
        company: true,
        user: true,
      },
    });

    response.result = companyUser;

    // --- end onboard_company_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start onboard_company_error code ---

    // --- end onboard_company_error code ---
  }
  res.status(response.code).send(response)
}

export default {
  onboardCompany,
}
