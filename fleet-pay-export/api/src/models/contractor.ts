import { User } from './user';
import { Company } from './company';
import { Contact } from './contact';
import { FundingSetting } from './funding_setting';
import { PaymentStructure } from './payment_structure';

export interface Contractor {
  id: string,
  name: string,
  userId: string,
  user?: User | null,
  pendingInvoiceAmount: number,
  emails: string[],
  phoneNumbers: string[],
  companyId: string,
  company?: Company | null,
  primaryContact: Contact,
  fundingSetting: FundingSetting,
  paymentStructure: PaymentStructure,
  deleted: boolean,
  lasPaymentRequestDate?: Date | null,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
