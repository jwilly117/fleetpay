import { Joi } from "express-validation";

export function AccountStatusValidator() {
    return Joi.string().valid('CHANGE_PASSWORD', 'COMPLETED');
}
