import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction.dart';

// --- start import code ---
  
// --- end import code ---

part 'transaction_response.g.dart';
part 'transaction_response.freezed.dart';

@unfreezed
class TransactionResponse with _$TransactionResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory TransactionResponse({
    @Default(-1) int code,
    String? error,
    Transaction? result,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) => _$TransactionResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
