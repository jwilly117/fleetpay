import 'package:freezed_annotation/freezed_annotation.dart';

import 'company.dart';
import 'user.dart';
import 'role.dart';
import 'user_status.dart';
// --- start import code ---
  
// --- end import code ---

part 'company_admin.g.dart';
part 'company_admin.freezed.dart';

@unfreezed
class CompanyAdmin with _$CompanyAdmin {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyAdmin({
    required String id,
    required String companyId,
    Company? company,
    required String userId,
    User? user,
    required Role role,
    required UserStatus status,
  }) = _CompanyAdmin;

  factory CompanyAdmin.fromJson(Map<String, dynamic> json) => _$CompanyAdminFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
