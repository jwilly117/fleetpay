// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserUpdateRequestImpl _$$UserUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserUpdateRequestImpl(
      name: json['name'] as String?,
      profilePicture: json['profilePicture'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fcmTokens: (json['fcmTokens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserUpdateRequestImplToJson(
        _$UserUpdateRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'phoneNumber': instance.phoneNumber,
      'fcmTokens': instance.fcmTokens,
    };
