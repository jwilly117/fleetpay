// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_contractor_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewContractorRequestImpl _$$NewContractorRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NewContractorRequestImpl(
      name: json['name'] as String,
      emails:
          (json['emails'] as List<dynamic>).map((e) => e as String).toList(),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      user: NewUser.fromJson(json['user'] as Map<String, dynamic>),
      fundingSetting: FundingSetting.fromJson(
          json['fundingSetting'] as Map<String, dynamic>),
      paymentStructure: PaymentStructure.fromJson(
          json['paymentStructure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewContractorRequestImplToJson(
        _$NewContractorRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emails': instance.emails,
      'phoneNumbers': instance.phoneNumbers,
      'user': instance.user,
      'fundingSetting': instance.fundingSetting,
      'paymentStructure': instance.paymentStructure,
    };
