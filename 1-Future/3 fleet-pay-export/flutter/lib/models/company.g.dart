// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      emails:
          (json['emails'] as List<dynamic>?)?.map((e) => e as String).toList(),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profilePicture: json['profilePicture'] as String?,
      businessHours: json['businessHours'] == null
          ? null
          : CompanyBusinessHours.fromJson(
              json['businessHours'] as Map<String, dynamic>),
      notificationSettings: json['notificationSettings'] == null
          ? null
          : NotificationSettings.fromJson(
              json['notificationSettings'] as Map<String, dynamic>),
      accountingDepartmentContacts:
          (json['accountingDepartmentContacts'] as List<dynamic>)
              .map((e) => Contact.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emails': instance.emails,
      'phoneNumbers': instance.phoneNumbers,
      'profilePicture': instance.profilePicture,
      'businessHours': instance.businessHours,
      'notificationSettings': instance.notificationSettings,
      'accountingDepartmentContacts': instance.accountingDepartmentContacts,
    };
