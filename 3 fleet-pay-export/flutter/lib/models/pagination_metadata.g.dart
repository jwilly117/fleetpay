// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationMetadataImpl _$$PaginationMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationMetadataImpl(
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      previous: json['previous'] as bool,
      next: json['next'] as bool,
    );

Map<String, dynamic> _$$PaginationMetadataImplToJson(
        _$PaginationMetadataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'previous': instance.previous,
      'next': instance.next,
    };
