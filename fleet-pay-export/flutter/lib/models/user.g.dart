// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      username: json['username'] as String?,
      multiFactorAuthEnabled: json['multiFactorAuthEnabled'] as bool,
      selectedCompanyId: json['selectedCompanyId'] as String?,
      status: $enumDecodeNullable(_$AccountStatusEnumMap, json['status']),
      fcmTokens:
          (json['fcmTokens'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'multiFactorAuthEnabled': instance.multiFactorAuthEnabled,
      'selectedCompanyId': instance.selectedCompanyId,
      'status': _$AccountStatusEnumMap[instance.status],
      'fcmTokens': instance.fcmTokens,
    };

const _$AccountStatusEnumMap = {
  AccountStatus.CHANGE_PASSWORD: 'CHANGE_PASSWORD',
  AccountStatus.COMPLETED: 'COMPLETED',
};
