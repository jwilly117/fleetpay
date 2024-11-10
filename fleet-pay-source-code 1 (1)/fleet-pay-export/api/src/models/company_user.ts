import { Company } from './company';
import { User } from './user';
import { Role } from './role';
import { UserStatus } from './user_status';

export interface CompanyUser {
  id: string,
  companyId: string,
  company?: Company | null,
  userId: string,
  user?: User | null,
  role: Role,
  status: UserStatus,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
