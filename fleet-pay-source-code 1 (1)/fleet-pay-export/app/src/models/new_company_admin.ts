import { NewUser } from './new_user';
import { Role } from './role';

export interface NewCompanyAdmin {
  companyId: string,
  userId: NewUser,
  role: Role,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
