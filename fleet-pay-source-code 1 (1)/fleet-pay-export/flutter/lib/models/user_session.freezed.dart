// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSession _$UserSessionFromJson(Map<String, dynamic> json) {
  return _UserSession.fromJson(json);
}

/// @nodoc
mixin _$UserSession {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  set refreshToken(String value) => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  set ipAddress(String? value) => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  set expiresAt(DateTime value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSessionCopyWith<UserSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSessionCopyWith<$Res> {
  factory $UserSessionCopyWith(
          UserSession value, $Res Function(UserSession) then) =
      _$UserSessionCopyWithImpl<$Res, UserSession>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String refreshToken,
      String? ipAddress,
      DateTime expiresAt});
}

/// @nodoc
class _$UserSessionCopyWithImpl<$Res, $Val extends UserSession>
    implements $UserSessionCopyWith<$Res> {
  _$UserSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? refreshToken = null,
    Object? ipAddress = freezed,
    Object? expiresAt = null,
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
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSessionImplCopyWith<$Res>
    implements $UserSessionCopyWith<$Res> {
  factory _$$UserSessionImplCopyWith(
          _$UserSessionImpl value, $Res Function(_$UserSessionImpl) then) =
      __$$UserSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String refreshToken,
      String? ipAddress,
      DateTime expiresAt});
}

/// @nodoc
class __$$UserSessionImplCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$UserSessionImpl>
    implements _$$UserSessionImplCopyWith<$Res> {
  __$$UserSessionImplCopyWithImpl(
      _$UserSessionImpl _value, $Res Function(_$UserSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? refreshToken = null,
    Object? ipAddress = freezed,
    Object? expiresAt = null,
  }) {
    return _then(_$UserSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSessionImpl implements _UserSession {
  _$UserSessionImpl(
      {required this.id,
      required this.userId,
      required this.refreshToken,
      this.ipAddress,
      required this.expiresAt});

  factory _$UserSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSessionImplFromJson(json);

  @override
  String id;
  @override
  String userId;
  @override
  String refreshToken;
  @override
  String? ipAddress;
  @override
  DateTime expiresAt;

  @override
  String toString() {
    return 'UserSession(id: $id, userId: $userId, refreshToken: $refreshToken, ipAddress: $ipAddress, expiresAt: $expiresAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      __$$UserSessionImplCopyWithImpl<_$UserSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSessionImplToJson(
      this,
    );
  }
}

abstract class _UserSession implements UserSession {
  factory _UserSession(
      {required String id,
      required String userId,
      required String refreshToken,
      String? ipAddress,
      required DateTime expiresAt}) = _$UserSessionImpl;

  factory _UserSession.fromJson(Map<String, dynamic> json) =
      _$UserSessionImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get refreshToken;
  set refreshToken(String value);
  @override
  String? get ipAddress;
  set ipAddress(String? value);
  @override
  DateTime get expiresAt;
  set expiresAt(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
