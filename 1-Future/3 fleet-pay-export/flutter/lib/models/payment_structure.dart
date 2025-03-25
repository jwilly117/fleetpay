import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_interval.dart';
// --- start import code ---

// --- end import code ---

part 'payment_structure.g.dart';
part 'payment_structure.freezed.dart';

@unfreezed
class PaymentStructure with _$PaymentStructure {
  // --- start init code ---

  // --- end init code ---

  factory PaymentStructure({
    required PaymentInterval paymentInterval,
    required DateTime cycleStartDate,
    DateTime? cycleEndDate,
  }) = _PaymentStructure;

  factory PaymentStructure.fromJson(Map<String, dynamic> json) => _$PaymentStructureFromJson(json);

  // --- start extension code ---

  // --- end extension code ---

}
