import { User } from './user';

export interface SystemLog {
  id: string,
  userId: string,
  companyId: string,
  user?: User | null,
  action: string,
  message: string,
  createdAt: Date,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
