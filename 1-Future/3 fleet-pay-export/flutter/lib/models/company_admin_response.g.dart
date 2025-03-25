// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_admin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyAdminResponseImpl _$$CompanyAdminResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyAdminResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : CompanyAdmin.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyAdminResponseImplToJson(
        _$CompanyAdminResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
