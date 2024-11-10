// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooleanResponseImpl _$$BooleanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BooleanResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] as bool?,
    );

Map<String, dynamic> _$$BooleanResponseImplToJson(
        _$BooleanResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
