import 'package:freezed_annotation/freezed_annotation.dart';

import 'contractor.dart';

// --- start import code ---
  
// --- end import code ---

part 'contractor_response.g.dart';
part 'contractor_response.freezed.dart';

@unfreezed
class ContractorResponse with _$ContractorResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory ContractorResponse({
    @Default(-1) int code,
    String? error,
    Contractor? result,
  }) = _ContractorResponse;

  factory ContractorResponse.fromJson(Map<String, dynamic> json) => _$ContractorResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
