import { Joi } from "express-validation";
import { AnySchema } from "joi";



export function PaginationMetadataValidator(): AnySchema {
  return Joi.object({
    total: Joi.number()
      // --- start total_extra code ---
  
      // --- end total_extra code ---
      .required(),
    page: Joi.number()
      // --- start page_extra code ---
  
      // --- end page_extra code ---
      .required(),
    size: Joi.number()
      // --- start size_extra code ---
  
      // --- end size_extra code ---
      .required(),
    previous: Joi.bool()
      // --- start previous_extra code ---
  
      // --- end previous_extra code ---
      .required(),
    next: Joi.bool()
      // --- start next_extra code ---
  
      // --- end next_extra code ---
      .required(),
  });
}

