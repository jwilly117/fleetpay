import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { ContactValidator } from './contact.validator';
import { FundingSettingValidator } from './funding_setting.validator';
import { PaymentStructureValidator } from './payment_structure.validator';

export function UpdateContractorRequestValidator(): AnySchema {
  return Joi.object({
    name: Joi.string()
      // --- start name_extra code ---
  
      // --- end name_extra code ---
      .required(),
    primaryContact: ContactValidator()
      // --- start primary_contact_extra code ---
  
      // --- end primary_contact_extra code ---
      .required(),
    fundingSetting: FundingSettingValidator()
      // --- start funding_setting_extra code ---
  
      // --- end funding_setting_extra code ---
      .allow(null),
    paymentStructure: PaymentStructureValidator()
      // --- start payment_structure_extra code ---
  
      // --- end payment_structure_extra code ---
      .allow(null),
  });
}

