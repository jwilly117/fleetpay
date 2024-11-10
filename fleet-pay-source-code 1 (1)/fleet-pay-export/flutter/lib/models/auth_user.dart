import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'auth_user.g.dart';
part 'auth_user.freezed.dart';

@unfreezed
class AuthUser with _$AuthUser {
  // --- start init code ---
  
  // --- end init code ---

  factory AuthUser({
    required String id,
    required String username,
    required String passwordHash,
    required String salt,
    required bool superAdmin,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) => _$AuthUserFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
