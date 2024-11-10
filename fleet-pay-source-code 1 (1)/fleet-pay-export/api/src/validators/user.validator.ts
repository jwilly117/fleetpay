import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { AccountStatusValidator } from './account_status.validator';

export function UserValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---

      // --- end id_extra code ---
      .required(),
    email: Joi.string()
      // --- start email_extra code ---

      // --- end email_extra code ---
      .required(),
    name: Joi.string()
      // --- start name_extra code ---

      // --- end name_extra code ---
      .required(),
    profilePicture: Joi.string()
      // --- start profile_picture_extra code ---

      // --- end profile_picture_extra code ---
      .allow(null),
    phoneNumber: Joi.string()
      // --- start phone_number_extra code ---

      // --- end phone_number_extra code ---
      .allow(null),
    username: Joi.string()
      // --- start username_extra code ---

      // --- end username_extra code ---
      .allow(null),
    multiFactorAuthEnabled: Joi.bool()
      // --- start multi_factor_auth_enabled_extra code ---

      // --- end multi_factor_auth_enabled_extra code ---
      .required(),
    selectedCompanyId: Joi.string()
      // --- start selected_company_id_extra code ---

      // --- end selected_company_id_extra code ---
      .allow(null),
    status: AccountStatusValidator()
      // --- start status_extra code ---

      // --- end status_extra code ---
      .allow(null),
    fcmTokens: Joi.array().items(Joi.string())
      // --- start fcm_tokens_extra code ---
  
      // --- end fcm_tokens_extra code ---
      .required(),
  });
}

