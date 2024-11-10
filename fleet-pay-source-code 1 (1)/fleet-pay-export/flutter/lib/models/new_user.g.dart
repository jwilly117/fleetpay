// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewUserImpl _$$NewUserImplFromJson(Map<String, dynamic> json) =>
    _$NewUserImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      profilePicture: json['profilePicture'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$NewUserImplToJson(_$NewUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'profilePicture': instance.profilePicture,
      'phoneNumber': instance.phoneNumber,
    };
