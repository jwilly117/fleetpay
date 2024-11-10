// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyUserResponseImpl _$$CompanyUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyUserResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : CompanyUser.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyUserResponseImplToJson(
        _$CompanyUserResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
