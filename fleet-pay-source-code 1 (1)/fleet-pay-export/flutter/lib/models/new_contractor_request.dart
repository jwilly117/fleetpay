import 'package:freezed_annotation/freezed_annotation.dart';

import 'new_user.dart';
import 'funding_setting.dart';
import 'payment_structure.dart';
// --- start import code ---
  
// --- end import code ---

part 'new_contractor_request.g.dart';
part 'new_contractor_request.freezed.dart';

@unfreezed
class NewContractorRequest with _$NewContractorRequest {
  // --- start init code ---
  
  // --- end init code ---

  factory NewContractorRequest({
    required String name,
    required List<String> emails,
    required List<String> phoneNumbers,
    required NewUser user,
    required FundingSetting fundingSetting,
    required PaymentStructure paymentStructure,
  }) = _NewContractorRequest;

  factory NewContractorRequest.fromJson(Map<String, dynamic> json) => _$NewContractorRequestFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
