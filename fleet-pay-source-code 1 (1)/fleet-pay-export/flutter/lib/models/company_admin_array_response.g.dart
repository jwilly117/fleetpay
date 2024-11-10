// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_admin_array_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyAdminArrayResponseImpl _$$CompanyAdminArrayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyAdminArrayResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => CompanyAdmin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompanyAdminArrayResponseImplToJson(
        _$CompanyAdminArrayResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
