import 'package:freezed_annotation/freezed_annotation.dart';

import 'contractor_dashboard_summary.dart';

// --- start import code ---
  
// --- end import code ---

part 'contractor_dashboard_summary_response.g.dart';
part 'contractor_dashboard_summary_response.freezed.dart';

@unfreezed
class ContractorDashboardSummaryResponse with _$ContractorDashboardSummaryResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory ContractorDashboardSummaryResponse({
    @Default(-1) int code,
    String? error,
    ContractorDashboardSummary? result,
  }) = _ContractorDashboardSummaryResponse;

  factory ContractorDashboardSummaryResponse.fromJson(Map<String, dynamic> json) => _$ContractorDashboardSummaryResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
