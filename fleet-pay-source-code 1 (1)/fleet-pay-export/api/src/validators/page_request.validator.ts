import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function PageRequestValidator(): AnySchema {
  return Joi.object({
    page: Joi.number()
      // --- start page_extra code ---
  
      // --- end page_extra code ---
      .required(),
    size: Joi.number()
      // --- start size_extra code ---
  
      // --- end size_extra code ---
      .required(),
  });
}

