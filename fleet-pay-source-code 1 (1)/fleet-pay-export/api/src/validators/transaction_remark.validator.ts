import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { UserValidator } from './user.validator';
import { TransactionStatusValidator } from './transaction_status.validator';

export function TransactionRemarkValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    userId: Joi.string()
      // --- start user_id_extra code ---
  
      // --- end user_id_extra code ---
      .required(),
    user: UserValidator()
      // --- start user_extra code ---
  
      // --- end user_extra code ---
      .allow(null),
    createdAt: Joi.date()
      // --- start created_at_extra code ---
  
      // --- end created_at_extra code ---
      .required(),
    remarks: Joi.string()
      // --- start remarks_extra code ---
  
      // --- end remarks_extra code ---
      .required(),
    status: TransactionStatusValidator()
      // --- start status_extra code ---
  
      // --- end status_extra code ---
      .allow(null),
  });
}

