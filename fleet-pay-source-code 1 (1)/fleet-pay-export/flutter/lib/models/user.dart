import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_status.dart';
// --- start import code ---

// --- end import code ---

part 'user.g.dart';
part 'user.freezed.dart';

@unfreezed
class User with _$User {
  // --- start init code ---

  // --- end init code ---

  factory User({
    required String id,
    required String email,
    required String name,
    String? profilePicture,
    String? phoneNumber,
    String? username,
    required bool multiFactorAuthEnabled,
    String? selectedCompanyId,
    AccountStatus? status,
    required List<String> fcmTokens,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // --- start extension code ---

  // --- end extension code ---

}
