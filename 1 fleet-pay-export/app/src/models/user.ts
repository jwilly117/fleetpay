import { AccountStatus } from './account_status';

export interface User {
  id: string,
  email: string,
  name: string,
  profilePicture?: string | null,
  phoneNumber?: string | null,
  username?: string | null,
  multiFactorAuthEnabled: boolean,
  selectedCompanyId?: string | null,
  status?: AccountStatus | null,
  fcmTokens: string[],
  // --- start extra_fields code ---

  // --- end extra_fields code ---
}
