import 'package:freezed_annotation/freezed_annotation.dart';

import 'company.dart';
import 'user.dart';
import 'role.dart';
import 'user_status.dart';
// --- start import code ---
  
// --- end import code ---

part 'company_user.g.dart';
part 'company_user.freezed.dart';

@unfreezed
class CompanyUser with _$CompanyUser {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyUser({
    required String id,
    required String companyId,
    Company? company,
    required String userId,
    User? user,
    required Role role,
    required UserStatus status,
  }) = _CompanyUser;

  factory CompanyUser.fromJson(Map<String, dynamic> json) => _$CompanyUserFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
