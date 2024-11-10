// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_remark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionRemarkImpl _$$TransactionRemarkImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionRemarkImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      remarks: json['remarks'] as String,
      status: $enumDecodeNullable(_$TransactionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$TransactionRemarkImplToJson(
        _$TransactionRemarkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
      'remarks': instance.remarks,
      'status': _$TransactionStatusEnumMap[instance.status],
    };

const _$TransactionStatusEnumMap = {
  TransactionStatus.PENDING: 'PENDING',
  TransactionStatus.APPROVED: 'APPROVED',
  TransactionStatus.DENIED: 'DENIED',
  TransactionStatus.COMPLETED: 'COMPLETED',
  TransactionStatus.FAILED: 'FAILED',
};
