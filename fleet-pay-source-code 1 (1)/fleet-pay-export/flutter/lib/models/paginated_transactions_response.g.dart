// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_transactions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedTransactionsResponseImpl
    _$$PaginatedTransactionsResponseImplFromJson(Map<String, dynamic> json) =>
        _$PaginatedTransactionsResponseImpl(
          code: (json['code'] as num?)?.toInt() ?? -1,
          error: json['error'] as String?,
          result: json['result'] == null
              ? null
              : PaginatedTransactions.fromJson(
                  json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PaginatedTransactionsResponseImplToJson(
        _$PaginatedTransactionsResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
