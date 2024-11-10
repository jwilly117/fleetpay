import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { CompanyValidator } from './company.validator';
import { UserValidator } from './user.validator';
import { RoleValidator } from './role.validator';
import { UserStatusValidator } from './user_status.validator';

export function CompanyUserValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    companyId: Joi.string()
      // --- start company_id_extra code ---
  
      // --- end company_id_extra code ---
      .required(),
    company: CompanyValidator()
      // --- start company_extra code ---
  
      // --- end company_extra code ---
      .allow(null),
    userId: Joi.string()
      // --- start user_id_extra code ---
  
      // --- end user_id_extra code ---
      .required(),
    user: UserValidator()
      // --- start user_extra code ---
  
      // --- end user_extra code ---
      .allow(null),
    role: RoleValidator()
      // --- start role_extra code ---
  
      // --- end role_extra code ---
      .required(),
    status: UserStatusValidator()
      // --- start status_extra code ---
  
      // --- end status_extra code ---
      .required(),
  });
}

