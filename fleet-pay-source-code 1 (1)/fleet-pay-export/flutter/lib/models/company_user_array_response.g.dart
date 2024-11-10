// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_user_array_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyUserArrayResponseImpl _$$CompanyUserArrayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyUserArrayResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => CompanyUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompanyUserArrayResponseImplToJson(
        _$CompanyUserArrayResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
