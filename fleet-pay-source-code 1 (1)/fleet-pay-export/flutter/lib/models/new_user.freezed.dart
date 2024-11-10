// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewUser _$NewUserFromJson(Map<String, dynamic> json) {
  return _NewUser.fromJson(json);
}

/// @nodoc
mixin _$NewUser {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  set profilePicture(String? value) => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  set phoneNumber(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewUserCopyWith<NewUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewUserCopyWith<$Res> {
  factory $NewUserCopyWith(NewUser value, $Res Function(NewUser) then) =
      _$NewUserCopyWithImpl<$Res, NewUser>;
  @useResult
  $Res call(
      {String name,
      String email,
      String username,
      String? profilePicture,
      String? phoneNumber});
}

/// @nodoc
class _$NewUserCopyWithImpl<$Res, $Val extends NewUser>
    implements $NewUserCopyWith<$Res> {
  _$NewUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewUserImplCopyWith<$Res> implements $NewUserCopyWith<$Res> {
  factory _$$NewUserImplCopyWith(
          _$NewUserImpl value, $Res Function(_$NewUserImpl) then) =
      __$$NewUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String username,
      String? profilePicture,
      String? phoneNumber});
}

/// @nodoc
class __$$NewUserImplCopyWithImpl<$Res>
    extends _$NewUserCopyWithImpl<$Res, _$NewUserImpl>
    implements _$$NewUserImplCopyWith<$Res> {
  __$$NewUserImplCopyWithImpl(
      _$NewUserImpl _value, $Res Function(_$NewUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$NewUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewUserImpl implements _NewUser {
  _$NewUserImpl(
      {required this.name,
      required this.email,
      required this.username,
      this.profilePicture,
      this.phoneNumber});

  factory _$NewUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewUserImplFromJson(json);

  @override
  String name;
  @override
  String email;
  @override
  String username;
  @override
  String? profilePicture;
  @override
  String? phoneNumber;

  @override
  String toString() {
    return 'NewUser(name: $name, email: $email, username: $username, profilePicture: $profilePicture, phoneNumber: $phoneNumber)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewUserImplCopyWith<_$NewUserImpl> get copyWith =>
      __$$NewUserImplCopyWithImpl<_$NewUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewUserImplToJson(
      this,
    );
  }
}

abstract class _NewUser implements NewUser {
  factory _NewUser(
      {required String name,
      required String email,
      required String username,
      String? profilePicture,
      String? phoneNumber}) = _$NewUserImpl;

  factory _NewUser.fromJson(Map<String, dynamic> json) = _$NewUserImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get username;
  set username(String value);
  @override
  String? get profilePicture;
  set profilePicture(String? value);
  @override
  String? get phoneNumber;
  set phoneNumber(String? value);
  @override
  @JsonKey(ignore: true)
  _$$NewUserImplCopyWith<_$NewUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
