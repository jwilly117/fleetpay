// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SystemLog _$SystemLogFromJson(Map<String, dynamic> json) {
  return _SystemLog.fromJson(json);
}

/// @nodoc
mixin _$SystemLog {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  set action(String value) => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  set message(String value) => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemLogCopyWith<SystemLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemLogCopyWith<$Res> {
  factory $SystemLogCopyWith(SystemLog value, $Res Function(SystemLog) then) =
      _$SystemLogCopyWithImpl<$Res, SystemLog>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String companyId,
      User? user,
      String action,
      String message,
      DateTime createdAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SystemLogCopyWithImpl<$Res, $Val extends SystemLog>
    implements $SystemLogCopyWith<$Res> {
  _$SystemLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? companyId = null,
    Object? user = freezed,
    Object? action = null,
    Object? message = null,
    Object? createdAt = null,
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
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$SystemLogImplCopyWith<$Res>
    implements $SystemLogCopyWith<$Res> {
  factory _$$SystemLogImplCopyWith(
          _$SystemLogImpl value, $Res Function(_$SystemLogImpl) then) =
      __$$SystemLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String companyId,
      User? user,
      String action,
      String message,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SystemLogImplCopyWithImpl<$Res>
    extends _$SystemLogCopyWithImpl<$Res, _$SystemLogImpl>
    implements _$$SystemLogImplCopyWith<$Res> {
  __$$SystemLogImplCopyWithImpl(
      _$SystemLogImpl _value, $Res Function(_$SystemLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? companyId = null,
    Object? user = freezed,
    Object? action = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_$SystemLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemLogImpl implements _SystemLog {
  _$SystemLogImpl(
      {required this.id,
      required this.userId,
      required this.companyId,
      this.user,
      required this.action,
      required this.message,
      required this.createdAt});

  factory _$SystemLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemLogImplFromJson(json);

  @override
  String id;
  @override
  String userId;
  @override
  String companyId;
  @override
  User? user;
  @override
  String action;
  @override
  String message;
  @override
  DateTime createdAt;

  @override
  String toString() {
    return 'SystemLog(id: $id, userId: $userId, companyId: $companyId, user: $user, action: $action, message: $message, createdAt: $createdAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemLogImplCopyWith<_$SystemLogImpl> get copyWith =>
      __$$SystemLogImplCopyWithImpl<_$SystemLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemLogImplToJson(
      this,
    );
  }
}

abstract class _SystemLog implements SystemLog {
  factory _SystemLog(
      {required String id,
      required String userId,
      required String companyId,
      User? user,
      required String action,
      required String message,
      required DateTime createdAt}) = _$SystemLogImpl;

  factory _SystemLog.fromJson(Map<String, dynamic> json) =
      _$SystemLogImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  User? get user;
  set user(User? value);
  @override
  String get action;
  set action(String value);
  @override
  String get message;
  set message(String value);
  @override
  DateTime get createdAt;
  set createdAt(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$SystemLogImplCopyWith<_$SystemLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
