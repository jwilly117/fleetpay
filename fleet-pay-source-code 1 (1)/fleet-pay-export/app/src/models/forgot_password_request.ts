import { User } from './user';

export interface ForgotPasswordRequest {
  id: string,
  fulfilled: boolean,
  token: string,
  userId: string,
  user?: User | null,
  createdAt: Date,
  expiresAt: Date,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
