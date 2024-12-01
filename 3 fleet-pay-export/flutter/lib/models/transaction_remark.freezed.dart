// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_remark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionRemark _$TransactionRemarkFromJson(Map<String, dynamic> json) {
  return _TransactionRemark.fromJson(json);
}

/// @nodoc
mixin _$TransactionRemark {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  set remarks(String value) => throw _privateConstructorUsedError;
  TransactionStatus? get status => throw _privateConstructorUsedError;
  set status(TransactionStatus? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRemarkCopyWith<TransactionRemark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRemarkCopyWith<$Res> {
  factory $TransactionRemarkCopyWith(
          TransactionRemark value, $Res Function(TransactionRemark) then) =
      _$TransactionRemarkCopyWithImpl<$Res, TransactionRemark>;
  @useResult
  $Res call(
      {String id,
      String userId,
      User? user,
      DateTime createdAt,
      String remarks,
      TransactionStatus? status});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TransactionRemarkCopyWithImpl<$Res, $Val extends TransactionRemark>
    implements $TransactionRemarkCopyWith<$Res> {
  _$TransactionRemarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? user = freezed,
    Object? createdAt = null,
    Object? remarks = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus?,
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
}

/// @nodoc
abstract class _$$TransactionRemarkImplCopyWith<$Res>
    implements $TransactionRemarkCopyWith<$Res> {
  factory _$$TransactionRemarkImplCopyWith(_$TransactionRemarkImpl value,
          $Res Function(_$TransactionRemarkImpl) then) =
      __$$TransactionRemarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      User? user,
      DateTime createdAt,
      String remarks,
      TransactionStatus? status});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TransactionRemarkImplCopyWithImpl<$Res>
    extends _$TransactionRemarkCopyWithImpl<$Res, _$TransactionRemarkImpl>
    implements _$$TransactionRemarkImplCopyWith<$Res> {
  __$$TransactionRemarkImplCopyWithImpl(_$TransactionRemarkImpl _value,
      $Res Function(_$TransactionRemarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? user = freezed,
    Object? createdAt = null,
    Object? remarks = null,
    Object? status = freezed,
  }) {
    return _then(_$TransactionRemarkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionRemarkImpl implements _TransactionRemark {
  _$TransactionRemarkImpl(
      {required this.id,
      required this.userId,
      this.user,
      required this.createdAt,
      required this.remarks,
      this.status});

  factory _$TransactionRemarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionRemarkImplFromJson(json);

  @override
  String id;
  @override
  String userId;
  @override
  User? user;
  @override
  DateTime createdAt;
  @override
  String remarks;
  @override
  TransactionStatus? status;

  @override
  String toString() {
    return 'TransactionRemark(id: $id, userId: $userId, user: $user, createdAt: $createdAt, remarks: $remarks, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionRemarkImplCopyWith<_$TransactionRemarkImpl> get copyWith =>
      __$$TransactionRemarkImplCopyWithImpl<_$TransactionRemarkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionRemarkImplToJson(
      this,
    );
  }
}

abstract class _TransactionRemark implements TransactionRemark {
  factory _TransactionRemark(
      {required String id,
      required String userId,
      User? user,
      required DateTime createdAt,
      required String remarks,
      TransactionStatus? status}) = _$TransactionRemarkImpl;

  factory _TransactionRemark.fromJson(Map<String, dynamic> json) =
      _$TransactionRemarkImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  User? get user;
  set user(User? value);
  @override
  DateTime get createdAt;
  set createdAt(DateTime value);
  @override
  String get remarks;
  set remarks(String value);
  @override
  TransactionStatus? get status;
  set status(TransactionStatus? value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionRemarkImplCopyWith<_$TransactionRemarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
