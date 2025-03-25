// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contractor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contractor _$ContractorFromJson(Map<String, dynamic> json) {
  return _Contractor.fromJson(json);
}

/// @nodoc
mixin _$Contractor {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  num get pendingInvoiceAmount => throw _privateConstructorUsedError;
  set pendingInvoiceAmount(num value) => throw _privateConstructorUsedError;
  List<String> get emails => throw _privateConstructorUsedError;
  set emails(List<String> value) => throw _privateConstructorUsedError;
  List<String> get phoneNumbers => throw _privateConstructorUsedError;
  set phoneNumbers(List<String> value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  set company(Company? value) => throw _privateConstructorUsedError;
  Contact get primaryContact => throw _privateConstructorUsedError;
  set primaryContact(Contact value) => throw _privateConstructorUsedError;
  FundingSetting get fundingSetting => throw _privateConstructorUsedError;
  set fundingSetting(FundingSetting value) =>
      throw _privateConstructorUsedError;
  PaymentStructure get paymentStructure => throw _privateConstructorUsedError;
  set paymentStructure(PaymentStructure value) =>
      throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  set deleted(bool value) => throw _privateConstructorUsedError;
  DateTime? get lasPaymentRequestDate => throw _privateConstructorUsedError;
  set lasPaymentRequestDate(DateTime? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorCopyWith<Contractor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorCopyWith<$Res> {
  factory $ContractorCopyWith(
          Contractor value, $Res Function(Contractor) then) =
      _$ContractorCopyWithImpl<$Res, Contractor>;
  @useResult
  $Res call(
      {String id,
      String name,
      String userId,
      User? user,
      num pendingInvoiceAmount,
      List<String> emails,
      List<String> phoneNumbers,
      String companyId,
      Company? company,
      Contact primaryContact,
      FundingSetting fundingSetting,
      PaymentStructure paymentStructure,
      bool deleted,
      DateTime? lasPaymentRequestDate});

  $UserCopyWith<$Res>? get user;
  $CompanyCopyWith<$Res>? get company;
  $ContactCopyWith<$Res> get primaryContact;
  $FundingSettingCopyWith<$Res> get fundingSetting;
  $PaymentStructureCopyWith<$Res> get paymentStructure;
}

/// @nodoc
class _$ContractorCopyWithImpl<$Res, $Val extends Contractor>
    implements $ContractorCopyWith<$Res> {
  _$ContractorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? user = freezed,
    Object? pendingInvoiceAmount = null,
    Object? emails = null,
    Object? phoneNumbers = null,
    Object? companyId = null,
    Object? company = freezed,
    Object? primaryContact = null,
    Object? fundingSetting = null,
    Object? paymentStructure = null,
    Object? deleted = null,
    Object? lasPaymentRequestDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      pendingInvoiceAmount: null == pendingInvoiceAmount
          ? _value.pendingInvoiceAmount
          : pendingInvoiceAmount // ignore: cast_nullable_to_non_nullable
              as num,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumbers: null == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as Contact,
      fundingSetting: null == fundingSetting
          ? _value.fundingSetting
          : fundingSetting // ignore: cast_nullable_to_non_nullable
              as FundingSetting,
      paymentStructure: null == paymentStructure
          ? _value.paymentStructure
          : paymentStructure // ignore: cast_nullable_to_non_nullable
              as PaymentStructure,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      lasPaymentRequestDate: freezed == lasPaymentRequestDate
          ? _value.lasPaymentRequestDate
          : lasPaymentRequestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get primaryContact {
    return $ContactCopyWith<$Res>(_value.primaryContact, (value) {
      return _then(_value.copyWith(primaryContact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FundingSettingCopyWith<$Res> get fundingSetting {
    return $FundingSettingCopyWith<$Res>(_value.fundingSetting, (value) {
      return _then(_value.copyWith(fundingSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentStructureCopyWith<$Res> get paymentStructure {
    return $PaymentStructureCopyWith<$Res>(_value.paymentStructure, (value) {
      return _then(_value.copyWith(paymentStructure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractorImplCopyWith<$Res>
    implements $ContractorCopyWith<$Res> {
  factory _$$ContractorImplCopyWith(
          _$ContractorImpl value, $Res Function(_$ContractorImpl) then) =
      __$$ContractorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String userId,
      User? user,
      num pendingInvoiceAmount,
      List<String> emails,
      List<String> phoneNumbers,
      String companyId,
      Company? company,
      Contact primaryContact,
      FundingSetting fundingSetting,
      PaymentStructure paymentStructure,
      bool deleted,
      DateTime? lasPaymentRequestDate});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CompanyCopyWith<$Res>? get company;
  @override
  $ContactCopyWith<$Res> get primaryContact;
  @override
  $FundingSettingCopyWith<$Res> get fundingSetting;
  @override
  $PaymentStructureCopyWith<$Res> get paymentStructure;
}

/// @nodoc
class __$$ContractorImplCopyWithImpl<$Res>
    extends _$ContractorCopyWithImpl<$Res, _$ContractorImpl>
    implements _$$ContractorImplCopyWith<$Res> {
  __$$ContractorImplCopyWithImpl(
      _$ContractorImpl _value, $Res Function(_$ContractorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? user = freezed,
    Object? pendingInvoiceAmount = null,
    Object? emails = null,
    Object? phoneNumbers = null,
    Object? companyId = null,
    Object? company = freezed,
    Object? primaryContact = null,
    Object? fundingSetting = null,
    Object? paymentStructure = null,
    Object? deleted = null,
    Object? lasPaymentRequestDate = freezed,
  }) {
    return _then(_$ContractorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      pendingInvoiceAmount: null == pendingInvoiceAmount
          ? _value.pendingInvoiceAmount
          : pendingInvoiceAmount // ignore: cast_nullable_to_non_nullable
              as num,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumbers: null == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as Contact,
      fundingSetting: null == fundingSetting
          ? _value.fundingSetting
          : fundingSetting // ignore: cast_nullable_to_non_nullable
              as FundingSetting,
      paymentStructure: null == paymentStructure
          ? _value.paymentStructure
          : paymentStructure // ignore: cast_nullable_to_non_nullable
              as PaymentStructure,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      lasPaymentRequestDate: freezed == lasPaymentRequestDate
          ? _value.lasPaymentRequestDate
          : lasPaymentRequestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorImpl implements _Contractor {
  _$ContractorImpl(
      {required this.id,
      required this.name,
      required this.userId,
      this.user,
      required this.pendingInvoiceAmount,
      required this.emails,
      required this.phoneNumbers,
      required this.companyId,
      this.company,
      required this.primaryContact,
      required this.fundingSetting,
      required this.paymentStructure,
      required this.deleted,
      this.lasPaymentRequestDate});

  factory _$ContractorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorImplFromJson(json);

  @override
  String id;
  @override
  String name;
  @override
  String userId;
  @override
  User? user;
  @override
  num pendingInvoiceAmount;
  @override
  List<String> emails;
  @override
  List<String> phoneNumbers;
  @override
  String companyId;
  @override
  Company? company;
  @override
  Contact primaryContact;
  @override
  FundingSetting fundingSetting;
  @override
  PaymentStructure paymentStructure;
  @override
  bool deleted;
  @override
  DateTime? lasPaymentRequestDate;

  @override
  String toString() {
    return 'Contractor(id: $id, name: $name, userId: $userId, user: $user, pendingInvoiceAmount: $pendingInvoiceAmount, emails: $emails, phoneNumbers: $phoneNumbers, companyId: $companyId, company: $company, primaryContact: $primaryContact, fundingSetting: $fundingSetting, paymentStructure: $paymentStructure, deleted: $deleted, lasPaymentRequestDate: $lasPaymentRequestDate)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorImplCopyWith<_$ContractorImpl> get copyWith =>
      __$$ContractorImplCopyWithImpl<_$ContractorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorImplToJson(
      this,
    );
  }
}

abstract class _Contractor implements Contractor {
  factory _Contractor(
      {required String id,
      required String name,
      required String userId,
      User? user,
      required num pendingInvoiceAmount,
      required List<String> emails,
      required List<String> phoneNumbers,
      required String companyId,
      Company? company,
      required Contact primaryContact,
      required FundingSetting fundingSetting,
      required PaymentStructure paymentStructure,
      required bool deleted,
      DateTime? lasPaymentRequestDate}) = _$ContractorImpl;

  factory _Contractor.fromJson(Map<String, dynamic> json) =
      _$ContractorImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  User? get user;
  set user(User? value);
  @override
  num get pendingInvoiceAmount;
  set pendingInvoiceAmount(num value);
  @override
  List<String> get emails;
  set emails(List<String> value);
  @override
  List<String> get phoneNumbers;
  set phoneNumbers(List<String> value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  Company? get company;
  set company(Company? value);
  @override
  Contact get primaryContact;
  set primaryContact(Contact value);
  @override
  FundingSetting get fundingSetting;
  set fundingSetting(FundingSetting value);
  @override
  PaymentStructure get paymentStructure;
  set paymentStructure(PaymentStructure value);
  @override
  bool get deleted;
  set deleted(bool value);
  @override
  DateTime? get lasPaymentRequestDate;
  set lasPaymentRequestDate(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$ContractorImplCopyWith<_$ContractorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
