// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_dashboard_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractorDashboardSummaryImpl _$$ContractorDashboardSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractorDashboardSummaryImpl(
      totalFunds: json['totalFunds'] as num,
      pendingFunds: json['pendingFunds'] as num,
      approvedFunds: json['approvedFunds'] as num,
      usedFunds: json['usedFunds'] as num,
      availableFund: json['availableFund'] as num,
    );

Map<String, dynamic> _$$ContractorDashboardSummaryImplToJson(
        _$ContractorDashboardSummaryImpl instance) =>
    <String, dynamic>{
      'totalFunds': instance.totalFunds,
      'pendingFunds': instance.pendingFunds,
      'approvedFunds': instance.approvedFunds,
      'usedFunds': instance.usedFunds,
      'availableFund': instance.availableFund,
    };
