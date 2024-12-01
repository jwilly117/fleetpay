import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function ContactValidator(): AnySchema {
  return Joi.object({
    name: Joi.string()
      // --- start name_extra code ---
  
      // --- end name_extra code ---
      .required(),
    email: Joi.string()
      // --- start email_extra code ---
  
      // --- end email_extra code ---
      .required(),
    phone: Joi.string()
      // --- start phone_extra code ---
  
      // --- end phone_extra code ---
      .allow(null),
  });
}

