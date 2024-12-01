import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_admin.dart';

// --- start import code ---
  
// --- end import code ---

part 'company_admin_response.g.dart';
part 'company_admin_response.freezed.dart';

@unfreezed
class CompanyAdminResponse with _$CompanyAdminResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyAdminResponse({
    @Default(-1) int code,
    String? error,
    CompanyAdmin? result,
  }) = _CompanyAdminResponse;

  factory CompanyAdminResponse.fromJson(Map<String, dynamic> json) => _$CompanyAdminResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
