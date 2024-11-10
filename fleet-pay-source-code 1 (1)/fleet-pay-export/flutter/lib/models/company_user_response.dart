import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_user.dart';

// --- start import code ---
  
// --- end import code ---

part 'company_user_response.g.dart';
part 'company_user_response.freezed.dart';

@unfreezed
class CompanyUserResponse with _$CompanyUserResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyUserResponse({
    @Default(-1) int code,
    String? error,
    CompanyUser? result,
  }) = _CompanyUserResponse;

  factory CompanyUserResponse.fromJson(Map<String, dynamic> json) => _$CompanyUserResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
