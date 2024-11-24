// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_admin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyAdmin _$CompanyAdminFromJson(Map<String, dynamic> json) {
  return _CompanyAdmin.fromJson(json);
}

/// @nodoc
mixin _$CompanyAdmin {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  set company(Company? value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  set user(User? value) => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  set role(Role value) => throw _privateConstructorUsedError;
  UserStatus get status => throw _privateConstructorUsedError;
  set status(UserStatus value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyAdminCopyWith<CompanyAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyAdminCopyWith<$Res> {
  factory $CompanyAdminCopyWith(
          CompanyAdmin value, $Res Function(CompanyAdmin) then) =
      _$CompanyAdminCopyWithImpl<$Res, CompanyAdmin>;
  @useResult
  $Res call(
      {String id,
      String companyId,
      Company? company,
      String userId,
      User? user,
      Role role,
      UserStatus status});

  $CompanyCopyWith<$Res>? get company;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CompanyAdminCopyWithImpl<$Res, $Val extends CompanyAdmin>
    implements $CompanyAdminCopyWith<$Res> {
  _$CompanyAdminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? company = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? role = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
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
abstract class _$$CompanyAdminImplCopyWith<$Res>
    implements $CompanyAdminCopyWith<$Res> {
  factory _$$CompanyAdminImplCopyWith(
          _$CompanyAdminImpl value, $Res Function(_$CompanyAdminImpl) then) =
      __$$CompanyAdminImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String companyId,
      Company? company,
      String userId,
      User? user,
      Role role,
      UserStatus status});

  @override
  $CompanyCopyWith<$Res>? get company;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CompanyAdminImplCopyWithImpl<$Res>
    extends _$CompanyAdminCopyWithImpl<$Res, _$CompanyAdminImpl>
    implements _$$CompanyAdminImplCopyWith<$Res> {
  __$$CompanyAdminImplCopyWithImpl(
      _$CompanyAdminImpl _value, $Res Function(_$CompanyAdminImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? company = freezed,
    Object? userId = null,
    Object? user = freezed,
    Object? role = null,
    Object? status = null,
  }) {
    return _then(_$CompanyAdminImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyAdminImpl implements _CompanyAdmin {
  _$CompanyAdminImpl(
      {required this.id,
      required this.companyId,
      this.company,
      required this.userId,
      this.user,
      required this.role,
      required this.status});

  factory _$CompanyAdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyAdminImplFromJson(json);

  @override
  String id;
  @override
  String companyId;
  @override
  Company? company;
  @override
  String userId;
  @override
  User? user;
  @override
  Role role;
  @override
  UserStatus status;

  @override
  String toString() {
    return 'CompanyAdmin(id: $id, companyId: $companyId, company: $company, userId: $userId, user: $user, role: $role, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyAdminImplCopyWith<_$CompanyAdminImpl> get copyWith =>
      __$$CompanyAdminImplCopyWithImpl<_$CompanyAdminImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyAdminImplToJson(
      this,
    );
  }
}

abstract class _CompanyAdmin implements CompanyAdmin {
  factory _CompanyAdmin(
      {required String id,
      required String companyId,
      Company? company,
      required String userId,
      User? user,
      required Role role,
      required UserStatus status}) = _$CompanyAdminImpl;

  factory _CompanyAdmin.fromJson(Map<String, dynamic> json) =
      _$CompanyAdminImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  Company? get company;
  set company(Company? value);
  @override
  String get userId;
  set userId(String value);
  @override
  User? get user;
  set user(User? value);
  @override
  Role get role;
  set role(Role value);
  @override
  UserStatus get status;
  set status(UserStatus value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyAdminImplCopyWith<_$CompanyAdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
