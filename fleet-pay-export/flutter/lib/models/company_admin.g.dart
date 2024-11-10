// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_admin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyAdminImpl _$$CompanyAdminImplFromJson(Map<String, dynamic> json) =>
    _$CompanyAdminImpl(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      role: $enumDecode(_$RoleEnumMap, json['role']),
      status: $enumDecode(_$UserStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$CompanyAdminImplToJson(_$CompanyAdminImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'company': instance.company,
      'userId': instance.userId,
      'user': instance.user,
      'role': _$RoleEnumMap[instance.role]!,
      'status': _$UserStatusEnumMap[instance.status]!,
    };

const _$RoleEnumMap = {
  Role.ADMIN: 'ADMIN',
  Role.MANAGER: 'MANAGER',
  Role.FINANCE: 'FINANCE',
  Role.HR: 'HR',
  Role.VIEWER: 'VIEWER',
};

const _$UserStatusEnumMap = {
  UserStatus.INVITED: 'INVITED',
  UserStatus.PENDING_ONBOARDING: 'PENDING_ONBOARDING',
  UserStatus.ACTIVE: 'ACTIVE',
  UserStatus.DISABLED: 'DISABLED',
  UserStatus.ARCHIVED: 'ARCHIVED',
};
