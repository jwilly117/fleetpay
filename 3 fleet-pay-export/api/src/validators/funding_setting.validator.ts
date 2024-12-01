import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { FundingLimitTypeValidator } from './funding_limit_type.validator';

export function FundingSettingValidator(): AnySchema {
  return Joi.object({
    fundingLimitType: FundingLimitTypeValidator()
      // --- start funding_limit_type_extra code ---

      // --- end funding_limit_type_extra code ---
      .required(),
    fundingLimit: Joi.number()
      // --- start funding_limit_extra code ---
      .greater(0)
      .when('fundingLimitType', {
        is: 'PERCENTAGE',
        then: Joi.number().max(100),
      })
      // --- end funding_limit_extra code ---
      .required(),
    transactionFee: Joi.number()
      // --- start transaction_fee_extra code ---
      .min(0)
      // --- end transaction_fee_extra code ---
      .required(),
    postageFee: Joi.number()
      // --- start postage_fee_extra code ---
      .min(0)
      // --- end postage_fee_extra code ---
      .required(),
    fundingAmount: Joi.number()
      // --- start funding_amount_extra code ---
      .greater(0)
      .greater(Joi.ref('fundingLimit'))
      // --- end funding_amount_extra code ---
      .required(),
  });
}

