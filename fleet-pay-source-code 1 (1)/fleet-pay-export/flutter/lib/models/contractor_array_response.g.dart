// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_array_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractorArrayResponseImpl _$$ContractorArrayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractorArrayResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Contractor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContractorArrayResponseImplToJson(
        _$ContractorArrayResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
