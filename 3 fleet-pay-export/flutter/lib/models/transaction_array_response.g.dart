// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_array_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionArrayResponseImpl _$$TransactionArrayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionArrayResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransactionArrayResponseImplToJson(
        _$TransactionArrayResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
