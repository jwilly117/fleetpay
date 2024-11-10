import { Joi } from "express-validation";
import { AnySchema } from "joi";

import { TransactionValidator } from './transaction.validator';
import { PaginationMetadataValidator } from './pagination_metadata.validator';

export function PaginatedTransactionsValidator(): AnySchema {
  return Joi.object({
    id: Joi.string()
      // --- start id_extra code ---
  
      // --- end id_extra code ---
      .required(),
    transactions: Joi.array().items(TransactionValidator())
      // --- start transactions_extra code ---
  
      // --- end transactions_extra code ---
      .required(),
    metadata: PaginationMetadataValidator()
      // --- start metadata_extra code ---
  
      // --- end metadata_extra code ---
      .required(),
  });
}

