// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedTransactionsImpl _$$PaginatedTransactionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedTransactionsImpl(
      id: json['id'] as String,
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata:
          PaginationMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedTransactionsImplToJson(
        _$PaginatedTransactionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactions': instance.transactions,
      'metadata': instance.metadata,
    };
