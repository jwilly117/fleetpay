// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordRequestImpl _$$ForgotPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordRequestImpl(
      id: json['id'] as String,
      fulfilled: json['fulfilled'] as bool,
      token: json['token'] as String,
      userId: json['userId'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$ForgotPasswordRequestImplToJson(
        _$ForgotPasswordRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fulfilled': instance.fulfilled,
      'token': instance.token,
      'userId': instance.userId,
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
