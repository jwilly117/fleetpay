import { Joi } from "express-validation";

export function RoleValidator() {
    return Joi.string().valid('ADMIN', 'MANAGER', 'FINANCE', 'HR', 'VIEWER');
}
