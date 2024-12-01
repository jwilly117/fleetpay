// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountImpl _$$BankAccountImplFromJson(Map<String, dynamic> json) =>
    _$BankAccountImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      accountNumber: json['accountNumber'] as String,
      routingNumber: json['routingNumber'] as String,
      accountType: $enumDecode(_$BankAccountTypeEnumMap, json['accountType']),
    );

Map<String, dynamic> _$$BankAccountImplToJson(_$BankAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accountNumber': instance.accountNumber,
      'routingNumber': instance.routingNumber,
      'accountType': _$BankAccountTypeEnumMap[instance.accountType]!,
    };

const _$BankAccountTypeEnumMap = {
  BankAccountType.CHECKING: 'CHECKING',
  BankAccountType.SAVINGS: 'SAVINGS',
};
