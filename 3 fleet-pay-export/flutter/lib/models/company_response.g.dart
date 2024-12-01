// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyResponseImpl _$$CompanyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Company.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyResponseImplToJson(
        _$CompanyResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
