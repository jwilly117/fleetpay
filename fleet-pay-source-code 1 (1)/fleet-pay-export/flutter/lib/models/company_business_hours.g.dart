// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_business_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyBusinessHoursImpl _$$CompanyBusinessHoursImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyBusinessHoursImpl(
      openingHour: json['openingHour'] as String,
      closingHour: json['closingHour'] as String,
      timezone: json['timezone'] as String,
    );

Map<String, dynamic> _$$CompanyBusinessHoursImplToJson(
        _$CompanyBusinessHoursImpl instance) =>
    <String, dynamic>{
      'openingHour': instance.openingHour,
      'closingHour': instance.closingHour,
      'timezone': instance.timezone,
    };
