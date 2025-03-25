import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction_status.dart';
// --- start import code ---
  
// --- end import code ---

part 'transaction_request_filter.g.dart';
part 'transaction_request_filter.freezed.dart';

@unfreezed
class TransactionRequestFilter with _$TransactionRequestFilter {
  // --- start init code ---
  
  // --- end init code ---

  factory TransactionRequestFilter({
    String? contractorId,
    DateTime? startDate,
    DateTime? endDate,
    List<TransactionStatus>? status,
  }) = _TransactionRequestFilter;

  factory TransactionRequestFilter.fromJson(Map<String, dynamic> json) => _$TransactionRequestFilterFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
