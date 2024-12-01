// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_request_preview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FundRequestPreviewResponseImpl _$$FundRequestPreviewResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FundRequestPreviewResponseImpl(
      code: (json['code'] as num?)?.toInt() ?? -1,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : FundRequestPreview.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FundRequestPreviewResponseImplToJson(
        _$FundRequestPreviewResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
