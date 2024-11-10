// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractorImpl _$$ContractorImplFromJson(Map<String, dynamic> json) =>
    _$ContractorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      userId: json['userId'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      pendingInvoiceAmount: json['pendingInvoiceAmount'] as num,
      emails:
          (json['emails'] as List<dynamic>).map((e) => e as String).toList(),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      companyId: json['companyId'] as String,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      primaryContact:
          Contact.fromJson(json['primaryContact'] as Map<String, dynamic>),
      fundingSetting: FundingSetting.fromJson(
          json['fundingSetting'] as Map<String, dynamic>),
      paymentStructure: PaymentStructure.fromJson(
          json['paymentStructure'] as Map<String, dynamic>),
      deleted: json['deleted'] as bool,
      lasPaymentRequestDate: json['lasPaymentRequestDate'] == null
          ? null
          : DateTime.parse(json['lasPaymentRequestDate'] as String),
    );

Map<String, dynamic> _$$ContractorImplToJson(_$ContractorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'user': instance.user,
      'pendingInvoiceAmount': instance.pendingInvoiceAmount,
      'emails': instance.emails,
      'phoneNumbers': instance.phoneNumbers,
      'companyId': instance.companyId,
      'company': instance.company,
      'primaryContact': instance.primaryContact,
      'fundingSetting': instance.fundingSetting,
      'paymentStructure': instance.paymentStructure,
      'deleted': instance.deleted,
      'lasPaymentRequestDate':
          instance.lasPaymentRequestDate?.toIso8601String(),
    };
