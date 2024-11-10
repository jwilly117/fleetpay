import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
import 'transaction_status.dart';
// --- start import code ---

// --- end import code ---

part 'transaction_remark.g.dart';
part 'transaction_remark.freezed.dart';

@unfreezed
class TransactionRemark with _$TransactionRemark {
  // --- start init code ---

  // --- end init code ---

  factory TransactionRemark({
    required String id,
    required String userId,
    User? user,
    required DateTime createdAt,
    required String remarks,
    TransactionStatus? status,
  }) = _TransactionRemark;

  factory TransactionRemark.fromJson(Map<String, dynamic> json) => _$TransactionRemarkFromJson(json);

  // --- start extension code ---

  // --- end extension code ---

}
