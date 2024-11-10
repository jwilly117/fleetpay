import 'package:freezed_annotation/freezed_annotation.dart';

import 'paginated_transactions.dart';

// --- start import code ---
  
// --- end import code ---

part 'paginated_transactions_response.g.dart';
part 'paginated_transactions_response.freezed.dart';

@unfreezed
class PaginatedTransactionsResponse with _$PaginatedTransactionsResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory PaginatedTransactionsResponse({
    @Default(-1) int code,
    String? error,
    PaginatedTransactions? result,
  }) = _PaginatedTransactionsResponse;

  factory PaginatedTransactionsResponse.fromJson(Map<String, dynamic> json) => _$PaginatedTransactionsResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
