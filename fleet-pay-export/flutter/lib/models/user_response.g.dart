// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : User.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
