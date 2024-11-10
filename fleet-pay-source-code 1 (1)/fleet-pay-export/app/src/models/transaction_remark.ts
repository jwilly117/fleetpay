import { User } from './user';
import { TransactionStatus } from './transaction_status';

export interface TransactionRemark {
  id: string,
  userId: string,
  user?: User | null,
  createdAt: Date,
  remarks: string,
  status?: TransactionStatus | null,
  // --- start extra_fields code ---

  // --- end extra_fields code ---
}
