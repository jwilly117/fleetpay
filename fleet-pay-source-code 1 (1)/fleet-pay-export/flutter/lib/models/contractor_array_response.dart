import 'package:freezed_annotation/freezed_annotation.dart';

import 'contractor.dart';

// --- start import code ---
  
// --- end import code ---

part 'contractor_array_response.g.dart';
part 'contractor_array_response.freezed.dart';

@unfreezed
class ContractorArrayResponse with _$ContractorArrayResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory ContractorArrayResponse({
    @Default(-1) int code,
    String? error,
    List<Contractor>? result,
  }) = _ContractorArrayResponse;

  factory ContractorArrayResponse.fromJson(Map<String, dynamic> json) => _$ContractorArrayResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
