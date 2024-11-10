import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { UserValidator } from './user.validator';

export function ForgotPasswordRequestValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    fulfilled: Joi.bool()
      // --- start fulfilled_extra code ---
  
      // --- end fulfilled_extra code ---
      .required(),
    token: Joi.string()
      // --- start token_extra code ---
  
      // --- end token_extra code ---
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
    expiresAt: Joi.date()
      // --- start expires_at_extra code ---
  
      // --- end expires_at_extra code ---
      .required(),
  });
}

