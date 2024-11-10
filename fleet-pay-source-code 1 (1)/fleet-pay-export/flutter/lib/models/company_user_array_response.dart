import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_user.dart';

// --- start import code ---
  
// --- end import code ---

part 'company_user_array_response.g.dart';
part 'company_user_array_response.freezed.dart';

@unfreezed
class CompanyUserArrayResponse with _$CompanyUserArrayResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyUserArrayResponse({
    @Default(-1) int code,
    String? error,
    List<CompanyUser>? result,
  }) = _CompanyUserArrayResponse;

  factory CompanyUserArrayResponse.fromJson(Map<String, dynamic> json) => _$CompanyUserArrayResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
