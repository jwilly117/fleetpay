import 'package:freezed_annotation/freezed_annotation.dart';

import 'contact.dart';
import 'funding_setting.dart';
import 'payment_structure.dart';
// --- start import code ---
  
// --- end import code ---

part 'update_contractor_request.g.dart';
part 'update_contractor_request.freezed.dart';

@unfreezed
class UpdateContractorRequest with _$UpdateContractorRequest {
  // --- start init code ---
  
  // --- end init code ---

  factory UpdateContractorRequest({
    required String name,
    required Contact primaryContact,
    FundingSetting? fundingSetting,
    PaymentStructure? paymentStructure,
  }) = _UpdateContractorRequest;

  factory UpdateContractorRequest.fromJson(Map<String, dynamic> json) => _$UpdateContractorRequestFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
