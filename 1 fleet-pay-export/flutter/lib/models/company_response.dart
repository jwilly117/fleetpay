import 'package:freezed_annotation/freezed_annotation.dart';

import 'company.dart';

// --- start import code ---
  
// --- end import code ---

part 'company_response.g.dart';
part 'company_response.freezed.dart';

@unfreezed
class CompanyResponse with _$CompanyResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyResponse({
    @Default(-1) int code,
    String? error,
    Company? result,
  }) = _CompanyResponse;

  factory CompanyResponse.fromJson(Map<String, dynamic> json) => _$CompanyResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
