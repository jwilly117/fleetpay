import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
import 'company.dart';
import 'contact.dart';
import 'funding_setting.dart';
import 'payment_structure.dart';
// --- start import code ---
  
// --- end import code ---

part 'contractor.g.dart';
part 'contractor.freezed.dart';

@unfreezed
class Contractor with _$Contractor {
  // --- start init code ---
  
  // --- end init code ---

  factory Contractor({
    required String id,
    required String name,
    required String userId,
    User? user,
    required num pendingInvoiceAmount,
    required List<String> emails,
    required List<String> phoneNumbers,
    required String companyId,
    Company? company,
    required Contact primaryContact,
    required FundingSetting fundingSetting,
    required PaymentStructure paymentStructure,
    required bool deleted,
    DateTime? lasPaymentRequestDate,
  }) = _Contractor;

  factory Contractor.fromJson(Map<String, dynamic> json) => _$ContractorFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
