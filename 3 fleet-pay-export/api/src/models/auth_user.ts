

export interface AuthUser {
  id: string,
  username: string,
  passwordHash: string,
  salt: string,
  superAdmin: boolean,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
