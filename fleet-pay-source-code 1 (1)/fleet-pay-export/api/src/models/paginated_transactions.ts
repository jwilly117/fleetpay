import { Transaction } from './transaction';
import { PaginationMetadata } from './pagination_metadata';

export interface PaginatedTransactions {
  id: string,
  transactions: Transaction[],
  metadata: PaginationMetadata,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
