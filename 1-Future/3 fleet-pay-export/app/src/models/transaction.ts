import { TransactionStatus } from './transaction_status';
import { Company } from './company';
import { Contractor } from './contractor';
import { User } from './user';
import { TransactionRemark } from './transaction_remark';

export interface Transaction {
  id: string,
  createdAt: Date,
  requestedAmount: number,
  fee: number,
  postageFee: number,
  netAmount: number,
  status: TransactionStatus,
  companyId: string,
  company?: Company | null,
  contractorId: string,
  contractor?: Contractor | null,
  userId: string,
  user?: User | null,
  remarks: TransactionRemark[],
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
