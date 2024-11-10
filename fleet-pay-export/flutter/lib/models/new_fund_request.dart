import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
// --- end import code ---

part 'new_fund_request.g.dart';
part 'new_fund_request.freezed.dart';

@unfreezed
class NewFundRequest with _$NewFundRequest {
  // --- start init code ---
  // --- end init code ---

  factory NewFundRequest({
    required num amount,
    required String contractorId,
  }) = _NewFundRequest;

  factory NewFundRequest.fromJson(Map<String, dynamic> json) => _$NewFundRequestFromJson(json);

  // --- start extension code ---
  // --- end extension code ---

}
