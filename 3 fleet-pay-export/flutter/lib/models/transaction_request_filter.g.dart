// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_request_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionRequestFilterImpl _$$TransactionRequestFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionRequestFilterImpl(
      contractorId: json['contractorId'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      status: (json['status'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$TransactionStatusEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$TransactionRequestFilterImplToJson(
        _$TransactionRequestFilterImpl instance) =>
    <String, dynamic>{
      'contractorId': instance.contractorId,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'status':
          instance.status?.map((e) => _$TransactionStatusEnumMap[e]!).toList(),
    };

const _$TransactionStatusEnumMap = {
  TransactionStatus.PENDING: 'PENDING',
  TransactionStatus.APPROVED: 'APPROVED',
  TransactionStatus.DENIED: 'DENIED',
  TransactionStatus.COMPLETED: 'COMPLETED',
  TransactionStatus.FAILED: 'FAILED',
};
