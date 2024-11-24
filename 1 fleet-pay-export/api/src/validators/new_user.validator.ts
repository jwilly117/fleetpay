import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function NewUserValidator(): AnySchema {
  return Joi.object({
    name: Joi.string()
      // --- start name_extra code ---
  
      // --- end name_extra code ---
      .required(),
    email: Joi.string()
      // --- start email_extra code ---
  
      // --- end email_extra code ---
      .required(),
    username: Joi.string()
      // --- start username_extra code ---
  
      // --- end username_extra code ---
      .required(),
    profilePicture: Joi.string()
      // --- start profile_picture_extra code ---
  
      // --- end profile_picture_extra code ---
      .allow(null),
    phoneNumber: Joi.string()
      // --- start phone_number_extra code ---
  
      // --- end phone_number_extra code ---
      .allow(null),
  });
}

