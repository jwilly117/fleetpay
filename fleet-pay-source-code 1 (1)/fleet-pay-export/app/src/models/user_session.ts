

export interface UserSession {
  id: string,
  userId: string,
  refreshToken: string,
  ipAddress?: string | null,
  expiresAt: Date,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
