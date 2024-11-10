import { Joi } from "express-validation";

export function TransactionStatusValidator() {
    return Joi.string().valid('PENDING', 'APPROVED', 'DENIED', 'COMPLETED', 'FAILED');
}
