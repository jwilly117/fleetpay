import { Joi } from "express-validation";

export function PaymentIntervalValidator() {
    return Joi.string().valid('DAILY', 'WEEKLY', 'BIWEEKLY', 'MONTHLY');
}
