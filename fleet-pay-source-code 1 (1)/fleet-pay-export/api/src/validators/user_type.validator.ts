import { Joi } from "express-validation";

export function UserTypeValidator() {
    return Joi.string().valid('SUPER_ADMIN', 'ADMIN', 'USER');
}
