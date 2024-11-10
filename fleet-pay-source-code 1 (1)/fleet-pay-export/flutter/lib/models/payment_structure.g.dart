// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentStructureImpl _$$PaymentStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentStructureImpl(
      paymentInterval:
          $enumDecode(_$PaymentIntervalEnumMap, json['paymentInterval']),
      cycleStartDate: DateTime.parse(json['cycleStartDate'] as String),
      cycleEndDate: json['cycleEndDate'] == null
          ? null
          : DateTime.parse(json['cycleEndDate'] as String),
    );

Map<String, dynamic> _$$PaymentStructureImplToJson(
        _$PaymentStructureImpl instance) =>
    <String, dynamic>{
      'paymentInterval': _$PaymentIntervalEnumMap[instance.paymentInterval]!,
      'cycleStartDate': instance.cycleStartDate.toIso8601String(),
      'cycleEndDate': instance.cycleEndDate?.toIso8601String(),
    };

const _$PaymentIntervalEnumMap = {
  PaymentInterval.DAILY: 'DAILY',
  PaymentInterval.WEEKLY: 'WEEKLY',
  PaymentInterval.BIWEEKLY: 'BIWEEKLY',
  PaymentInterval.MONTHLY: 'MONTHLY',
};
