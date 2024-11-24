import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { TransactionStatusValidator } from './transaction_status.validator';

export function TransactionRequestFilterValidator(): AnySchema {
  return Joi.object({
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---
  
      // --- end contractor_id_extra code ---
      .allow(null),
    startDate: Joi.date()
      // --- start start_date_extra code ---
  
      // --- end start_date_extra code ---
        .allow(null),
    endDate: Joi.date()
      // --- start end_date_extra code ---
  
      // --- end end_date_extra code ---
      .allow(null),
    status: Joi.array().items(TransactionStatusValidator())
      // --- start status_extra code ---
  
      // --- end status_extra code ---
      .allow(null),
  });
}

