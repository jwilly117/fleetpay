// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_request_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundRequestPreviewImpl _$$FundRequestPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$FundRequestPreviewImpl(
      companyId: json['companyId'] as String,
      contractorId: json['contractorId'] as String,
      requestedAmount: json['requestedAmount'] as num,
      fee: json['fee'] as num,
      postageFee: json['postageFee'] as num,
      netAmount: json['netAmount'] as num,
    );

Map<String, dynamic> _$$FundRequestPreviewImplToJson(
        _$FundRequestPreviewImpl instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'contractorId': instance.contractorId,
      'requestedAmount': instance.requestedAmount,
      'fee': instance.fee,
      'postageFee': instance.postageFee,
      'netAmount': instance.netAmount,
    };
