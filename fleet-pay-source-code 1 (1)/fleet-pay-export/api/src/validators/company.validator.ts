import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { CompanyBusinessHoursValidator } from './company_business_hours.validator';
import { NotificationSettingsValidator } from './notification_settings.validator';
import { ContactValidator } from './contact.validator';

export function CompanyValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    name: Joi.string()
      // --- start name_extra code ---
  
      // --- end name_extra code ---
      .required(),
    emails: Joi.array().items(Joi.string())
      // --- start emails_extra code ---
  
      // --- end emails_extra code ---
      .allow(null),
    phoneNumbers: Joi.array().items(Joi.string())
      // --- start phone_numbers_extra code ---
  
      // --- end phone_numbers_extra code ---
      .allow(null),
    profilePicture: Joi.string()
      // --- start profile_picture_extra code ---
  
      // --- end profile_picture_extra code ---
      .allow(null),
    businessHours: CompanyBusinessHoursValidator()
      // --- start business_hours_extra code ---
  
      // --- end business_hours_extra code ---
      .allow(null),
    notificationSettings: NotificationSettingsValidator()
      // --- start notification_settings_extra code ---
  
      // --- end notification_settings_extra code ---
      .allow(null),
    accountingDepartmentContacts: Joi.array().items(ContactValidator())
      // --- start accounting_department_contacts_extra code ---
  
      // --- end accounting_department_contacts_extra code ---
      .required(),
  });
}

