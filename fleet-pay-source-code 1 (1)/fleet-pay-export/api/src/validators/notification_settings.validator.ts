import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function NotificationSettingsValidator(): AnySchema {
  return Joi.object({
    emailNotifications: Joi.bool()
      // --- start email_notifications_extra code ---
  
      // --- end email_notifications_extra code ---
      .required(),
    emails: Joi.array().items(Joi.string())
      // --- start emails_extra code ---
  
      // --- end emails_extra code ---
      .required(),
    smsNotifications: Joi.bool()
      // --- start sms_notifications_extra code ---
  
      // --- end sms_notifications_extra code ---
      .required(),
    phoneNumbers: Joi.array().items(Joi.string())
      // --- start phone_numbers_extra code ---
  
      // --- end phone_numbers_extra code ---
      .required(),
  });
}

