import 'package:freezed_annotation/freezed_annotation.dart';

import 'new_user.dart';
import 'role.dart';
// --- start import code ---
  
// --- end import code ---

part 'new_company_admin.g.dart';
part 'new_company_admin.freezed.dart';

@unfreezed
class NewCompanyAdmin with _$NewCompanyAdmin {
  // --- start init code ---
  
  // --- end init code ---

  factory NewCompanyAdmin({
    required String companyId,
    required NewUser userId,
    required Role role,
  }) = _NewCompanyAdmin;

  factory NewCompanyAdmin.fromJson(Map<String, dynamic> json) => _$NewCompanyAdminFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
