// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_contractor_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateContractorRequestImpl _$$UpdateContractorRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateContractorRequestImpl(
      name: json['name'] as String,
      primaryContact:
          Contact.fromJson(json['primaryContact'] as Map<String, dynamic>),
      fundingSetting: json['fundingSetting'] == null
          ? null
          : FundingSetting.fromJson(
              json['fundingSetting'] as Map<String, dynamic>),
      paymentStructure: json['paymentStructure'] == null
          ? null
          : PaymentStructure.fromJson(
              json['paymentStructure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateContractorRequestImplToJson(
        _$UpdateContractorRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'primaryContact': instance.primaryContact,
      'fundingSetting': instance.fundingSetting,
      'paymentStructure': instance.paymentStructure,
    };
