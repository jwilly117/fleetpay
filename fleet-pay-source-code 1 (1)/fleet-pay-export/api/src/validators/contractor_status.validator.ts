import { Joi } from "express-validation";

export function ContractorStatusValidator() {
    return Joi.string().valid('INVITED', 'ACCEPTED', 'PENDING_ONBOARDING', 'DISABLED', 'ARCHIVED');
}
