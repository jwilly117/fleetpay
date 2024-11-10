import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { UserValidator } from './user.validator';
import { CompanyValidator } from './company.validator';
import { ContactValidator } from './contact.validator';
import { FundingSettingValidator } from './funding_setting.validator';
import { PaymentStructureValidator } from './payment_structure.validator';

export function ContractorValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    name: Joi.string()
      // --- start name_extra code ---
  
      // --- end name_extra code ---
      .required(),
    userId: Joi.string()
      // --- start user_id_extra code ---
  
      // --- end user_id_extra code ---
      .required(),
    user: UserValidator()
      // --- start user_extra code ---
  
      // --- end user_extra code ---
      .allow(null),
    pendingInvoiceAmount: Joi.number()
      // --- start pending_invoice_amount_extra code ---
  
      // --- end pending_invoice_amount_extra code ---
      .required(),
    emails: Joi.array().items(Joi.string())
      // --- start emails_extra code ---
  
      // --- end emails_extra code ---
      .required(),
    phoneNumbers: Joi.array().items(Joi.string())
      // --- start phone_numbers_extra code ---
  
      // --- end phone_numbers_extra code ---
      .required(),
    companyId: Joi.string()
      // --- start company_id_extra code ---
  
      // --- end company_id_extra code ---
      .required(),
    company: CompanyValidator()
      // --- start company_extra code ---
  
      // --- end company_extra code ---
      .allow(null),
    primaryContact: ContactValidator()
      // --- start primary_contact_extra code ---
  
      // --- end primary_contact_extra code ---
      .required(),
    fundingSetting: FundingSettingValidator()
      // --- start funding_setting_extra code ---
  
      // --- end funding_setting_extra code ---
      .required(),
    paymentStructure: PaymentStructureValidator()
      // --- start payment_structure_extra code ---
  
      // --- end payment_structure_extra code ---
      .required(),
    deleted: Joi.bool()
      // --- start deleted_extra code ---
  
      // --- end deleted_extra code ---
      .required(),
    lasPaymentRequestDate: Joi.date()
      // --- start las_payment_request_date_extra code ---
  
      // --- end las_payment_request_date_extra code ---
      .allow(null),
  });
}

