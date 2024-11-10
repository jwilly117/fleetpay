import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function CompanyBusinessHoursValidator(): AnySchema {
  return Joi.object({
    openingHour: Joi.string()
      // --- start opening_hour_extra code ---

      // --- end opening_hour_extra code ---
      .required(),
    closingHour: Joi.string()
      // --- start closing_hour_extra code ---

      // --- end closing_hour_extra code ---
      .required(),
    timezone: Joi.string()
      // --- start timezone_extra code ---

      // --- end timezone_extra code ---
      .required(),
  });
}

