// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSessionImpl _$$UserSessionImplFromJson(Map<String, dynamic> json) =>
    _$UserSessionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      refreshToken: json['refreshToken'] as String,
      ipAddress: json['ipAddress'] as String?,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$UserSessionImplToJson(_$UserSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'refreshToken': instance.refreshToken,
      'ipAddress': instance.ipAddress,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
