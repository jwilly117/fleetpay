import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'user_update_request.g.dart';
part 'user_update_request.freezed.dart';

@unfreezed
class UserUpdateRequest with _$UserUpdateRequest {
  // --- start init code ---
  
  // --- end init code ---

  factory UserUpdateRequest({
    String? name,
    String? profilePicture,
    String? phoneNumber,
    List<String>? fcmTokens,
  }) = _UserUpdateRequest;

  factory UserUpdateRequest.fromJson(Map<String, dynamic> json) => _$UserUpdateRequestFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
