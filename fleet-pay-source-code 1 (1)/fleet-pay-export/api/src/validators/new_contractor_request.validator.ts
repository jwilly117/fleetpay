import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { NewUserValidator } from './new_user.validator';
import { FundingSettingValidator } from './funding_setting.validator';
import { PaymentStructureValidator } from './payment_structure.validator';

export function NewContractorRequestValidator(): AnySchema {
  return Joi.object({
    name: Joi.string()
      // --- start name_extra code ---

      // --- end name_extra code ---
      .required(),
    emails: Joi.array().items(Joi.string())
      // --- start emails_extra code ---

      // --- end emails_extra code ---
      .required(),
    phoneNumbers: Joi.array().items(Joi.string())
      // --- start phone_numbers_extra code ---

      // --- end phone_numbers_extra code ---
      .required(),
    user: NewUserValidator()
      // --- start user_extra code ---

      // --- end user_extra code ---
      .required(),
    fundingSetting: FundingSettingValidator()
      // --- start funding_setting_extra code ---

      // --- end funding_setting_extra code ---
      .required(),
    paymentStructure: PaymentStructureValidator()
      // --- start payment_structure_extra code ---

      // --- end payment_structure_extra code ---
      .required(),
  });
}

