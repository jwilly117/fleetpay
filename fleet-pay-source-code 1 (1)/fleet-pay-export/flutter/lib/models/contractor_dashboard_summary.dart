import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'contractor_dashboard_summary.g.dart';
part 'contractor_dashboard_summary.freezed.dart';

@unfreezed
class ContractorDashboardSummary with _$ContractorDashboardSummary {
  // --- start init code ---
  
  // --- end init code ---

  factory ContractorDashboardSummary({
    required num totalFunds,
    required num pendingFunds,
    required num approvedFunds,
    required num usedFunds,
    required num availableFund,
  }) = _ContractorDashboardSummary;

  factory ContractorDashboardSummary.fromJson(Map<String, dynamic> json) => _$ContractorDashboardSummaryFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
