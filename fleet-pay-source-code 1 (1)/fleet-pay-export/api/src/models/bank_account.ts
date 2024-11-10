import { BankAccountType } from './bank_account_type';

export interface BankAccount {
  id: string,
  userId: string,
  accountNumber: string,
  routingNumber: string,
  accountType: BankAccountType,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
