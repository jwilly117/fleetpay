// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthTokenResponseImpl _$$AuthTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthTokenResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : AuthToken.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthTokenResponseImplToJson(
        _$AuthTokenResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
