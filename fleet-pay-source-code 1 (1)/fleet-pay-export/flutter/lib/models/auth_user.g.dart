// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      passwordHash: json['passwordHash'] as String,
      salt: json['salt'] as String,
      superAdmin: json['superAdmin'] as bool,
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'passwordHash': instance.passwordHash,
      'salt': instance.salt,
      'superAdmin': instance.superAdmin,
    };
