import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
// --- start import code ---
  
// --- end import code ---

part 'forgot_password_request.g.dart';
part 'forgot_password_request.freezed.dart';

@unfreezed
class ForgotPasswordRequest with _$ForgotPasswordRequest {
  // --- start init code ---
  
  // --- end init code ---

  factory ForgotPasswordRequest({
    required String id,
    required bool fulfilled,
    required String token,
    required String userId,
    User? user,
    required DateTime createdAt,
    required DateTime expiresAt,
  }) = _ForgotPasswordRequest;

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) => _$ForgotPasswordRequestFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
