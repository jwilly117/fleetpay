import 'package:freezed_annotation/freezed_annotation.dart';

import 'funding_limit_type.dart';
// --- start import code ---
  
// --- end import code ---

part 'funding_setting.g.dart';
part 'funding_setting.freezed.dart';

@unfreezed
class FundingSetting with _$FundingSetting {
  // --- start init code ---
  
  // --- end init code ---

  factory FundingSetting({
    required FundingLimitType fundingLimitType,
    required num fundingLimit,
    required num transactionFee,
    required num postageFee,
    required num fundingAmount,
  }) = _FundingSetting;

  factory FundingSetting.fromJson(Map<String, dynamic> json) => _$FundingSettingFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
