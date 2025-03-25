import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction_status.dart';
import 'company.dart';
import 'contractor.dart';
import 'user.dart';
import 'transaction_remark.dart';
// --- start import code ---
  
// --- end import code ---

part 'transaction.g.dart';
part 'transaction.freezed.dart';

@unfreezed
class Transaction with _$Transaction {
  // --- start init code ---
  
  // --- end init code ---

  factory Transaction({
    required String id,
    required DateTime createdAt,
    required num requestedAmount,
    required num fee,
    required num postageFee,
    required num netAmount,
    required TransactionStatus status,
    required String companyId,
    Company? company,
    required String contractorId,
    Contractor? contractor,
    required String userId,
    User? user,
    required List<TransactionRemark> remarks,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
