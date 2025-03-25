// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordRequestResponseImpl
    _$$ForgotPasswordRequestResponseImplFromJson(Map<String, dynamic> json) =>
        _$ForgotPasswordRequestResponseImpl(
          code: (json['code'] as num?)?.toInt() ?? -1,
          error: json['error'] as String?,
          result: json['result'] == null
              ? null
              : ForgotPasswordRequest.fromJson(
                  json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ForgotPasswordRequestResponseImplToJson(
        _$ForgotPasswordRequestResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
