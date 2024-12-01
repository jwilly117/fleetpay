// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funding_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundingSettingImpl _$$FundingSettingImplFromJson(Map<String, dynamic> json) =>
    _$FundingSettingImpl(
      fundingLimitType:
          $enumDecode(_$FundingLimitTypeEnumMap, json['fundingLimitType']),
      fundingLimit: json['fundingLimit'] as num,
      transactionFee: json['transactionFee'] as num,
      postageFee: json['postageFee'] as num,
      fundingAmount: json['fundingAmount'] as num,
    );

Map<String, dynamic> _$$FundingSettingImplToJson(
        _$FundingSettingImpl instance) =>
    <String, dynamic>{
      'fundingLimitType': _$FundingLimitTypeEnumMap[instance.fundingLimitType]!,
      'fundingLimit': instance.fundingLimit,
      'transactionFee': instance.transactionFee,
      'postageFee': instance.postageFee,
      'fundingAmount': instance.fundingAmount,
    };

const _$FundingLimitTypeEnumMap = {
  FundingLimitType.FIXED_AMOUNT: 'FIXED_AMOUNT',
  FundingLimitType.PERCENTAGE: 'PERCENTAGE',
};
