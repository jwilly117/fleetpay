import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function UserUpdateRequestValidator(): AnySchema {
  return Joi.object({
    name: Joi.string()
      // --- start name_extra code ---
  
      // --- end name_extra code ---
      .allow(null),
    profilePicture: Joi.string()
      // --- start profile_picture_extra code ---
  
      // --- end profile_picture_extra code ---
      .allow(null),
    phoneNumber: Joi.string()
      // --- start phone_number_extra code ---
  
      // --- end phone_number_extra code ---
      .allow(null),
    fcmTokens: Joi.array().items(Joi.string())
      // --- start fcm_tokens_extra code ---
  
      // --- end fcm_tokens_extra code ---
      .allow(null),
  });
}

