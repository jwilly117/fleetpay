import { Contact } from './contact';
import { FundingSetting } from './funding_setting';
import { PaymentStructure } from './payment_structure';

export interface UpdateContractorRequest {
  name: string,
  primaryContact: Contact,
  fundingSetting?: FundingSetting | null,
  paymentStructure?: PaymentStructure | null,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
