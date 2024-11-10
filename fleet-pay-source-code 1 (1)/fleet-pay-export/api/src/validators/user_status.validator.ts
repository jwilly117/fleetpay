import { Joi } from "express-validation";

export function UserStatusValidator() {
    return Joi.string().valid('INVITED', 'PENDING_ONBOARDING', 'ACTIVE', 'DISABLED', 'ARCHIVED');
}
