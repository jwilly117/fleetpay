

export interface UserUpdateRequest {
  name?: string | null,
  profilePicture?: string | null,
  phoneNumber?: string | null,
  fcmTokens?: string[] | null,
  // --- start extra_fields code ---
  
  // --- end extra_fields code ---
}
