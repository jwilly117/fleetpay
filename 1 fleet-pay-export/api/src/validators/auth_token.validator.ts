import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function AuthTokenValidator(): AnySchema {
  return Joi.object({
    accessToken: Joi.string()
      // --- start access_token_extra code ---
  
      // --- end access_token_extra code ---
      .required(),
    refreshToken: Joi.string()
      // --- start refresh_token_extra code ---
  
      // --- end refresh_token_extra code ---
      .required(),
    expiresAt: Joi.date()
      // --- start expires_at_extra code ---
  
      // --- end expires_at_extra code ---
      .required(),
  });
}

