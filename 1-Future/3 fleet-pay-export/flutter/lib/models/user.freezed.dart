// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  set profilePicture(String? value) => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  bool get multiFactorAuthEnabled => throw _privateConstructorUsedError;
  set multiFactorAuthEnabled(bool value) => throw _privateConstructorUsedError;
  String? get selectedCompanyId => throw _privateConstructorUsedError;
  set selectedCompanyId(String? value) => throw _privateConstructorUsedError;
  AccountStatus? get status => throw _privateConstructorUsedError;
  set status(AccountStatus? value) => throw _privateConstructorUsedError;
  List<String> get fcmTokens => throw _privateConstructorUsedError;
  set fcmTokens(List<String> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String? profilePicture,
      String? phoneNumber,
      String? username,
      bool multiFactorAuthEnabled,
      String? selectedCompanyId,
      AccountStatus? status,
      List<String> fcmTokens});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? multiFactorAuthEnabled = null,
    Object? selectedCompanyId = freezed,
    Object? status = freezed,
    Object? fcmTokens = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      multiFactorAuthEnabled: null == multiFactorAuthEnabled
          ? _value.multiFactorAuthEnabled
          : multiFactorAuthEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCompanyId: freezed == selectedCompanyId
          ? _value.selectedCompanyId
          : selectedCompanyId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      fcmTokens: null == fcmTokens
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String? profilePicture,
      String? phoneNumber,
      String? username,
      bool multiFactorAuthEnabled,
      String? selectedCompanyId,
      AccountStatus? status,
      List<String> fcmTokens});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? multiFactorAuthEnabled = null,
    Object? selectedCompanyId = freezed,
    Object? status = freezed,
    Object? fcmTokens = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      multiFactorAuthEnabled: null == multiFactorAuthEnabled
          ? _value.multiFactorAuthEnabled
          : multiFactorAuthEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCompanyId: freezed == selectedCompanyId
          ? _value.selectedCompanyId
          : selectedCompanyId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      fcmTokens: null == fcmTokens
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {required this.id,
      required this.email,
      required this.name,
      this.profilePicture,
      this.phoneNumber,
      this.username,
      required this.multiFactorAuthEnabled,
      this.selectedCompanyId,
      this.status,
      required this.fcmTokens});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  String id;
  @override
  String email;
  @override
  String name;
  @override
  String? profilePicture;
  @override
  String? phoneNumber;
  @override
  String? username;
  @override
  bool multiFactorAuthEnabled;
  @override
  String? selectedCompanyId;
  @override
  AccountStatus? status;
  @override
  List<String> fcmTokens;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, profilePicture: $profilePicture, phoneNumber: $phoneNumber, username: $username, multiFactorAuthEnabled: $multiFactorAuthEnabled, selectedCompanyId: $selectedCompanyId, status: $status, fcmTokens: $fcmTokens)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required String id,
      required String email,
      required String name,
      String? profilePicture,
      String? phoneNumber,
      String? username,
      required bool multiFactorAuthEnabled,
      String? selectedCompanyId,
      AccountStatus? status,
      required List<String> fcmTokens}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get name;
  set name(String value);
  @override
  String? get profilePicture;
  set profilePicture(String? value);
  @override
  String? get phoneNumber;
  set phoneNumber(String? value);
  @override
  String? get username;
  set username(String? value);
  @override
  bool get multiFactorAuthEnabled;
  set multiFactorAuthEnabled(bool value);
  @override
  String? get selectedCompanyId;
  set selectedCompanyId(String? value);
  @override
  AccountStatus? get status;
  set status(AccountStatus? value);
  @override
  List<String> get fcmTokens;
  set fcmTokens(List<String> value);
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
