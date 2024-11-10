import 'package:freezed_annotation/freezed_annotation.dart';

import 'bank_account_type.dart';
// --- start import code ---
  
// --- end import code ---

part 'bank_account.g.dart';
part 'bank_account.freezed.dart';

@unfreezed
class BankAccount with _$BankAccount {
  // --- start init code ---
  
  // --- end init code ---

  factory BankAccount({
    required String id,
    required String userId,
    required String accountNumber,
    required String routingNumber,
    required BankAccountType accountType,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) => _$BankAccountFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
