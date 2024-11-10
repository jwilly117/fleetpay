import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'user_session.g.dart';
part 'user_session.freezed.dart';

@unfreezed
class UserSession with _$UserSession {
  // --- start init code ---
  
  // --- end init code ---

  factory UserSession({
    required String id,
    required String userId,
    required String refreshToken,
    String? ipAddress,
    required DateTime expiresAt,
  }) = _UserSession;

  factory UserSession.fromJson(Map<String, dynamic> json) => _$UserSessionFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
