import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction.dart';

// --- start import code ---
  
// --- end import code ---

part 'transaction_array_response.g.dart';
part 'transaction_array_response.freezed.dart';

@unfreezed
class TransactionArrayResponse with _$TransactionArrayResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory TransactionArrayResponse({
    @Default(-1) int code,
    String? error,
    List<Transaction>? result,
  }) = _TransactionArrayResponse;

  factory TransactionArrayResponse.fromJson(Map<String, dynamic> json) => _$TransactionArrayResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
