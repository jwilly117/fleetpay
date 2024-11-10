// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StringResponseImpl _$$StringResponseImplFromJson(Map<String, dynamic> json) =>
    _$StringResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$StringResponseImplToJson(
        _$StringResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
