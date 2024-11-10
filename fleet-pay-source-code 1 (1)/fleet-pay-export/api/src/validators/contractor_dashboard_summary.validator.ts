import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function ContractorDashboardSummaryValidator(): AnySchema {
  return Joi.object({
    totalFunds: Joi.number()
      // --- start total_funds_extra code ---
  
      // --- end total_funds_extra code ---
      .required(),
    pendingFunds: Joi.number()
      // --- start pending_funds_extra code ---
  
      // --- end pending_funds_extra code ---
      .required(),
    approvedFunds: Joi.number()
      // --- start approved_funds_extra code ---
  
      // --- end approved_funds_extra code ---
      .required(),
    usedFunds: Joi.number()
      // --- start used_funds_extra code ---
  
      // --- end used_funds_extra code ---
      .required(),
    availableFund: Joi.number()
      // --- start available_fund_extra code ---
  
      // --- end available_fund_extra code ---
      .required(),
  });
}

