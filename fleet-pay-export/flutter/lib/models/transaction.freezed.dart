// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  num get requestedAmount => throw _privateConstructorUsedError;
  set requestedAmount(num value) => throw _privateConstructorUsedError;
  num get fee => throw _privateConstructorUsedError;
  set fee(num value) => throw _privateConstructorUsedError;
  num get postageFee => throw _privateConstructorUsedError;
  set postageFee(num value) => throw _privateConstructorUsedError;
  num get netAmount => throw _privateConstructorUsedError;
  set netAmount(num value) => throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  set status(TransactionStatus value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  set company(Company? value) => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  set contractorId(String value) => throw _privateConstructorUsedError;
  Contractor? get contractor => throw _privateConstructorUsedError;
  set contractor(Contractor? value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  List<TransactionRemark> get remarks => throw _privateConstructorUsedError;
  set remarks(List<TransactionRemark> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      num requestedAmount,
      num fee,
      num postageFee,
      num netAmount,
      TransactionStatus status,
      String companyId,
      Company? company,
      String contractorId,
      Contractor? contractor,
      String userId,
      User? user,
      List<TransactionRemark> remarks});

  $CompanyCopyWith<$Res>? get company;
  $ContractorCopyWith<$Res>? get contractor;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? requestedAmount = null,
    Object? fee = null,
    Object? postageFee = null,
    Object? netAmount = null,
    Object? status = null,
    Object? companyId = null,
    Object? company = freezed,
    Object? contractorId = null,
    Object? contractor = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? remarks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestedAmount: null == requestedAmount
          ? _value.requestedAmount
          : requestedAmount // ignore: cast_nullable_to_non_nullable
              as num,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as num,
      postageFee: null == postageFee
          ? _value.postageFee
          : postageFee // ignore: cast_nullable_to_non_nullable
              as num,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as Contractor?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as List<TransactionRemark>,
    ) as $Val);
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
  $ContractorCopyWith<$Res>? get contractor {
    if (_value.contractor == null) {
      return null;
    }

    return $ContractorCopyWith<$Res>(_value.contractor!, (value) {
      return _then(_value.copyWith(contractor: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      num requestedAmount,
      num fee,
      num postageFee,
      num netAmount,
      TransactionStatus status,
      String companyId,
      Company? company,
      String contractorId,
      Contractor? contractor,
      String userId,
      User? user,
      List<TransactionRemark> remarks});

  @override
  $CompanyCopyWith<$Res>? get company;
  @override
  $ContractorCopyWith<$Res>? get contractor;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? requestedAmount = null,
    Object? fee = null,
    Object? postageFee = null,
    Object? netAmount = null,
    Object? status = null,
    Object? companyId = null,
    Object? company = freezed,
    Object? contractorId = null,
    Object? contractor = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? remarks = null,
  }) {
    return _then(_$TransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestedAmount: null == requestedAmount
          ? _value.requestedAmount
          : requestedAmount // ignore: cast_nullable_to_non_nullable
              as num,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as num,
      postageFee: null == postageFee
          ? _value.postageFee
          : postageFee // ignore: cast_nullable_to_non_nullable
              as num,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as Contractor?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as List<TransactionRemark>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  _$TransactionImpl(
      {required this.id,
      required this.createdAt,
      required this.requestedAmount,
      required this.fee,
      required this.postageFee,
      required this.netAmount,
      required this.status,
      required this.companyId,
      this.company,
      required this.contractorId,
      this.contractor,
      required this.userId,
      this.user,
      required this.remarks});

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  String id;
  @override
  DateTime createdAt;
  @override
  num requestedAmount;
  @override
  num fee;
  @override
  num postageFee;
  @override
  num netAmount;
  @override
  TransactionStatus status;
  @override
  String companyId;
  @override
  Company? company;
  @override
  String contractorId;
  @override
  Contractor? contractor;
  @override
  String userId;
  @override
  User? user;
  @override
  List<TransactionRemark> remarks;

  @override
  String toString() {
    return 'Transaction(id: $id, createdAt: $createdAt, requestedAmount: $requestedAmount, fee: $fee, postageFee: $postageFee, netAmount: $netAmount, status: $status, companyId: $companyId, company: $company, contractorId: $contractorId, contractor: $contractor, userId: $userId, user: $user, remarks: $remarks)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {required String id,
      required DateTime createdAt,
      required num requestedAmount,
      required num fee,
      required num postageFee,
      required num netAmount,
      required TransactionStatus status,
      required String companyId,
      Company? company,
      required String contractorId,
      Contractor? contractor,
      required String userId,
      User? user,
      required List<TransactionRemark> remarks}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  DateTime get createdAt;
  set createdAt(DateTime value);
  @override
  num get requestedAmount;
  set requestedAmount(num value);
  @override
  num get fee;
  set fee(num value);
  @override
  num get postageFee;
  set postageFee(num value);
  @override
  num get netAmount;
  set netAmount(num value);
  @override
  TransactionStatus get status;
  set status(TransactionStatus value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  Company? get company;
  set company(Company? value);
  @override
  String get contractorId;
  set contractorId(String value);
  @override
  Contractor? get contractor;
  set contractor(Contractor? value);
  @override
  String get userId;
  set userId(String value);
  @override
  User? get user;
  set user(User? value);
  @override
  List<TransactionRemark> get remarks;
  set remarks(List<TransactionRemark> value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
