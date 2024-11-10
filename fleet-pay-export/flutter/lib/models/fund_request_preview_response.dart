import 'package:freezed_annotation/freezed_annotation.dart';

import 'fund_request_preview.dart';

// --- start import code ---
  
// --- end import code ---

part 'fund_request_preview_response.g.dart';
part 'fund_request_preview_response.freezed.dart';

@unfreezed
class FundRequestPreviewResponse with _$FundRequestPreviewResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory FundRequestPreviewResponse({
    @Default(-1) int code,
    String? error,
    FundRequestPreview? result,
  }) = _FundRequestPreviewResponse;

  factory FundRequestPreviewResponse.fromJson(Map<String, dynamic> json) => _$FundRequestPreviewResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
