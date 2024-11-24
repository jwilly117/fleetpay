import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function NewFundRequestValidator(): AnySchema {
  return Joi.object({
    amount: Joi.number()
      // --- start amount_extra code ---
  
      // --- end amount_extra code ---
      .required(),
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---
  
      // --- end contractor_id_extra code ---
      .required(),
  });
}

