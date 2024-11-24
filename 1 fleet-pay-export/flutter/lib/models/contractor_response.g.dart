// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractorResponseImpl _$$ContractorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractorResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Contractor.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContractorResponseImplToJson(
        _$ContractorResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
