import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function UserSessionValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    userId: Joi.string()
      // --- start user_id_extra code ---
  
      // --- end user_id_extra code ---
      .required(),
    refreshToken: Joi.string()
      // --- start refresh_token_extra code ---
  
      // --- end refresh_token_extra code ---
      .required(),
    ipAddress: Joi.string()
      // --- start ip_address_extra code ---
  
      // --- end ip_address_extra code ---
      .allow(null),
    expiresAt: Joi.date()
      // --- start expires_at_extra code ---
  
      // --- end expires_at_extra code ---
      .required(),
  });
}

