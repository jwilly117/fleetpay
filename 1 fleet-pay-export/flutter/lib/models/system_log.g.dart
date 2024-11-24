// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SystemLogImpl _$$SystemLogImplFromJson(Map<String, dynamic> json) =>
    _$SystemLogImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      companyId: json['companyId'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      action: json['action'] as String,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SystemLogImplToJson(_$SystemLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'companyId': instance.companyId,
      'user': instance.user,
      'action': instance.action,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
    };
