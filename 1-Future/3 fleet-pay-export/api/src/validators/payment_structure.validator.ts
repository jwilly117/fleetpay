import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { PaymentIntervalValidator } from './payment_interval.validator';

export function PaymentStructureValidator(): AnySchema {
  return Joi.object({
    paymentInterval: PaymentIntervalValidator()
      // --- start payment_interval_extra code ---

      // --- end payment_interval_extra code ---
      .required(),
    cycleStartDate: Joi.date()
      // --- start cycle_start_date_extra code ---
      .max(Joi.ref('cycleEndDate'))
      // --- end cycle_start_date_extra code ---
      .required(),
    cycleEndDate: Joi.date()
      // --- start cycle_end_date_extra code ---
      // --- end cycle_end_date_extra code ---
      .allow(null),
  });
}

