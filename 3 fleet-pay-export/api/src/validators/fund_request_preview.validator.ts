import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function FundRequestPreviewValidator(): AnySchema {
  return Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---
  
      // --- end company_id_extra code ---
      .required(),
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---
  
      // --- end contractor_id_extra code ---
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
  });
}

