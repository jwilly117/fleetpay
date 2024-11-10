// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_remark_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionRemarkResponseImpl _$$TransactionRemarkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionRemarkResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : TransactionRemark.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionRemarkResponseImplToJson(
        _$TransactionRemarkResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
