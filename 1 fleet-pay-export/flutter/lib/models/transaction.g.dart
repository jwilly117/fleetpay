// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      requestedAmount: json['requestedAmount'] as num,
      fee: json['fee'] as num,
      postageFee: json['postageFee'] as num,
      netAmount: json['netAmount'] as num,
      status: $enumDecode(_$TransactionStatusEnumMap, json['status']),
      companyId: json['companyId'] as String,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      contractorId: json['contractorId'] as String,
      contractor: json['contractor'] == null
          ? null
          : Contractor.fromJson(json['contractor'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      remarks: (json['remarks'] as List<dynamic>)
          .map((e) => TransactionRemark.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'requestedAmount': instance.requestedAmount,
      'fee': instance.fee,
      'postageFee': instance.postageFee,
      'netAmount': instance.netAmount,
      'status': _$TransactionStatusEnumMap[instance.status]!,
      'companyId': instance.companyId,
      'company': instance.company,
      'contractorId': instance.contractorId,
      'contractor': instance.contractor,
      'userId': instance.userId,
      'user': instance.user,
      'remarks': instance.remarks,
    };

const _$TransactionStatusEnumMap = {
  TransactionStatus.PENDING: 'PENDING',
  TransactionStatus.APPROVED: 'APPROVED',
  TransactionStatus.DENIED: 'DENIED',
  TransactionStatus.COMPLETED: 'COMPLETED',
  TransactionStatus.FAILED: 'FAILED',
};
