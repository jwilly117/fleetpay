import { NewUser } from './new_user';
import { FundingSetting } from './funding_setting';
import { PaymentStructure } from './payment_structure';

export interface NewContractorRequest {
  name: string,
  emails: string[],
  phoneNumbers: string[],
  user: NewUser,
  fundingSetting: FundingSetting,
  paymentStructure: PaymentStructure,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
