import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { TransactionStatusValidator } from './transaction_status.validator';
import { CompanyValidator } from './company.validator';
import { ContractorValidator } from './contractor.validator';
import { UserValidator } from './user.validator';
import { TransactionRemarkValidator } from './transaction_remark.validator';

export function TransactionValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    createdAt: Joi.date()
      // --- start created_at_extra code ---
  
      // --- end created_at_extra code ---
      .required(),
    requestedAmount: Joi.number()
      // --- start requested_amount_extra code ---
  
      // --- end requested_amount_extra code ---
      .required(),
    fee: Joi.number()
      // --- start fee_extra code ---
  
      // --- end fee_extra code ---
      .required(),
    postageFee: Joi.number()
      // --- start postage_fee_extra code ---
  
      // --- end postage_fee_extra code ---
      .required(),
    netAmount: Joi.number()
      // --- start net_amount_extra code ---
  
      // --- end net_amount_extra code ---
      .required(),
    status: TransactionStatusValidator()
      // --- start status_extra code ---
  
      // --- end status_extra code ---
      .required(),
    companyId: Joi.string()
      // --- start company_id_extra code ---
  
      // --- end company_id_extra code ---
      .required(),
    company: CompanyValidator()
      // --- start company_extra code ---
  
      // --- end company_extra code ---
      .allow(null),
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---
  
      // --- end contractor_id_extra code ---
      .required(),
    contractor: ContractorValidator()
      // --- start contractor_extra code ---
  
      // --- end contractor_extra code ---
      .allow(null),
    userId: Joi.string()
      // --- start user_id_extra code ---
  
      // --- end user_id_extra code ---
      .required(),
    user: UserValidator()
      // --- start user_extra code ---
  
      // --- end user_extra code ---
      .allow(null),
    remarks: Joi.array().items(TransactionRemarkValidator())
      // --- start remarks_extra code ---
  
      // --- end remarks_extra code ---
      .required(),
  });
}

