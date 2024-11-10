import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'fund_request_preview.g.dart';
part 'fund_request_preview.freezed.dart';

@unfreezed
class FundRequestPreview with _$FundRequestPreview {
  // --- start init code ---
  
  // --- end init code ---

  factory FundRequestPreview({
    required String companyId,
    required String contractorId,
    required num requestedAmount,
    required num fee,
    required num postageFee,
    required num netAmount,
  }) = _FundRequestPreview;

  factory FundRequestPreview.fromJson(Map<String, dynamic> json) => _$FundRequestPreviewFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
