// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_dashboard_summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractorDashboardSummaryResponseImpl
    _$$ContractorDashboardSummaryResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ContractorDashboardSummaryResponseImpl(
          code: (json['code'] as num?)?.toInt() ?? -1,
          error: json['error'] as String?,
          result: json['result'] == null
              ? null
              : ContractorDashboardSummary.fromJson(
                  json['result'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ContractorDashboardSummaryResponseImplToJson(
        _$ContractorDashboardSummaryResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'error': instance.error,
      'result': instance.result,
    };
