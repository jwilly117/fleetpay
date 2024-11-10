import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { UserValidator } from './user.validator';

export function SystemLogValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    userId: Joi.string()
      // --- start user_id_extra code ---
  
      // --- end user_id_extra code ---
      .required(),
    companyId: Joi.string()
      // --- start company_id_extra code ---
  
      // --- end company_id_extra code ---
      .required(),
    user: UserValidator()
      // --- start user_extra code ---
  
      // --- end user_extra code ---
      .allow(null),
    action: Joi.string()
      // --- start action_extra code ---
  
      // --- end action_extra code ---
      .required(),
    message: Joi.string()
      // --- start message_extra code ---
  
      // --- end message_extra code ---
      .required(),
    createdAt: Joi.date()
      // --- start created_at_extra code ---
  
      // --- end created_at_extra code ---
      .required(),
  });
}

