// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSettingsImpl _$$NotificationSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingsImpl(
      emailNotifications: json['emailNotifications'] as bool,
      emails:
          (json['emails'] as List<dynamic>).map((e) => e as String).toList(),
      smsNotifications: json['smsNotifications'] as bool,
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NotificationSettingsImplToJson(
        _$NotificationSettingsImpl instance) =>
    <String, dynamic>{
      'emailNotifications': instance.emailNotifications,
      'emails': instance.emails,
      'smsNotifications': instance.smsNotifications,
      'phoneNumbers': instance.phoneNumbers,
    };
