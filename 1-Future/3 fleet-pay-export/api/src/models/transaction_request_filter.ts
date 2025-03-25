import { TransactionStatus } from './transaction_status';

export interface TransactionRequestFilter {
  contractorId?: string | null,
  startDate?: Date | null,
  endDate?: Date | null,
  status?: TransactionStatus[] | null,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
