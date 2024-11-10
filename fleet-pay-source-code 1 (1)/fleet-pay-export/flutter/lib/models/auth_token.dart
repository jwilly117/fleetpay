import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'auth_token.g.dart';
part 'auth_token.freezed.dart';

@unfreezed
class AuthToken with _$AuthToken {
  // --- start init code ---
  
  // --- end init code ---

  factory AuthToken({
    required String accessToken,
    required String refreshToken,
    required DateTime expiresAt,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) => _$AuthTokenFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
