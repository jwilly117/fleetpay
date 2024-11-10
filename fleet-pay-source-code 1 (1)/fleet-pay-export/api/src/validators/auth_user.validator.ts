import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function AuthUserValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    username: Joi.string()
      // --- start username_extra code ---
  
      // --- end username_extra code ---
      .required(),
    passwordHash: Joi.string()
      // --- start password_hash_extra code ---
  
      // --- end password_hash_extra code ---
      .required(),
    salt: Joi.string()
      // --- start salt_extra code ---
  
      // --- end salt_extra code ---
      .required(),
    superAdmin: Joi.bool()
      // --- start super_admin_extra code ---
  
      // --- end super_admin_extra code ---
      .required(),
  });
}

