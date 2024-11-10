import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction_remark.dart';

// --- start import code ---
  
// --- end import code ---

part 'transaction_remark_response.g.dart';
part 'transaction_remark_response.freezed.dart';

@unfreezed
class TransactionRemarkResponse with _$TransactionRemarkResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory TransactionRemarkResponse({
    @Default(-1) int code,
    String? error,
    TransactionRemark? result,
  }) = _TransactionRemarkResponse;

  factory TransactionRemarkResponse.fromJson(Map<String, dynamic> json) => _$TransactionRemarkResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
