import { Joi } from "express-validation";

export function FundingLimitTypeValidator() {
    return Joi.string().valid('FIXED_AMOUNT', 'PERCENTAGE');
}
