// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_company_admin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewCompanyAdminImpl _$$NewCompanyAdminImplFromJson(
        Map<String, dynamic> json) =>
    _$NewCompanyAdminImpl(
      companyId: json['companyId'] as String,
      userId: NewUser.fromJson(json['userId'] as Map<String, dynamic>),
      role: $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$$NewCompanyAdminImplToJson(
        _$NewCompanyAdminImpl instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'userId': instance.userId,
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$RoleEnumMap = {
  Role.ADMIN: 'ADMIN',
  Role.MANAGER: 'MANAGER',
  Role.FINANCE: 'FINANCE',
  Role.HR: 'HR',
  Role.VIEWER: 'VIEWER',
};
