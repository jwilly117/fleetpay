import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_admin.dart';

// --- start import code ---
  
// --- end import code ---

part 'company_admin_array_response.g.dart';
part 'company_admin_array_response.freezed.dart';

@unfreezed
class CompanyAdminArrayResponse with _$CompanyAdminArrayResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyAdminArrayResponse({
    @Default(-1) int code,
    String? error,
    List<CompanyAdmin>? result,
  }) = _CompanyAdminArrayResponse;

  factory CompanyAdminArrayResponse.fromJson(Map<String, dynamic> json) => _$CompanyAdminArrayResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
