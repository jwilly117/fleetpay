import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction.dart';
import 'pagination_metadata.dart';
// --- start import code ---
  
// --- end import code ---

part 'paginated_transactions.g.dart';
part 'paginated_transactions.freezed.dart';

@unfreezed
class PaginatedTransactions with _$PaginatedTransactions {
  // --- start init code ---
  
  // --- end init code ---

  factory PaginatedTransactions({
    required String id,
    required List<Transaction> transactions,
    required PaginationMetadata metadata,
  }) = _PaginatedTransactions;

  factory PaginatedTransactions.fromJson(Map<String, dynamic> json) => _$PaginatedTransactionsFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
