// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewCompanyImpl _$$NewCompanyImplFromJson(Map<String, dynamic> json) =>
    _$NewCompanyImpl(
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String?,
      emails:
          (json['emails'] as List<dynamic>?)?.map((e) => e as String).toList(),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      businessHours: json['businessHours'] == null
          ? null
          : CompanyBusinessHours.fromJson(
              json['businessHours'] as Map<String, dynamic>),
      notificationSettings: json['notificationSettings'] == null
          ? null
          : NotificationSettings.fromJson(
              json['notificationSettings'] as Map<String, dynamic>),
      accountingDepartmentContact: json['accountingDepartmentContact'] == null
          ? null
          : Contact.fromJson(
              json['accountingDepartmentContact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewCompanyImplToJson(_$NewCompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'emails': instance.emails,
      'phoneNumbers': instance.phoneNumbers,
      'businessHours': instance.businessHours,
      'notificationSettings': instance.notificationSettings,
      'accountingDepartmentContact': instance.accountingDepartmentContact,
    };
