// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_company_admin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewCompanyAdmin _$NewCompanyAdminFromJson(Map<String, dynamic> json) {
  return _NewCompanyAdmin.fromJson(json);
}

/// @nodoc
mixin _$NewCompanyAdmin {
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  NewUser get userId => throw _privateConstructorUsedError;
  set userId(NewUser value) => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  set role(Role value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCompanyAdminCopyWith<NewCompanyAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCompanyAdminCopyWith<$Res> {
  factory $NewCompanyAdminCopyWith(
          NewCompanyAdmin value, $Res Function(NewCompanyAdmin) then) =
      _$NewCompanyAdminCopyWithImpl<$Res, NewCompanyAdmin>;
  @useResult
  $Res call({String companyId, NewUser userId, Role role});

  $NewUserCopyWith<$Res> get userId;
}

/// @nodoc
class _$NewCompanyAdminCopyWithImpl<$Res, $Val extends NewCompanyAdmin>
    implements $NewCompanyAdminCopyWith<$Res> {
  _$NewCompanyAdminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? userId = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as NewUser,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewUserCopyWith<$Res> get userId {
    return $NewUserCopyWith<$Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewCompanyAdminImplCopyWith<$Res>
    implements $NewCompanyAdminCopyWith<$Res> {
  factory _$$NewCompanyAdminImplCopyWith(_$NewCompanyAdminImpl value,
          $Res Function(_$NewCompanyAdminImpl) then) =
      __$$NewCompanyAdminImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyId, NewUser userId, Role role});

  @override
  $NewUserCopyWith<$Res> get userId;
}

/// @nodoc
class __$$NewCompanyAdminImplCopyWithImpl<$Res>
    extends _$NewCompanyAdminCopyWithImpl<$Res, _$NewCompanyAdminImpl>
    implements _$$NewCompanyAdminImplCopyWith<$Res> {
  __$$NewCompanyAdminImplCopyWithImpl(
      _$NewCompanyAdminImpl _value, $Res Function(_$NewCompanyAdminImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? userId = null,
    Object? role = null,
  }) {
    return _then(_$NewCompanyAdminImpl(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as NewUser,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewCompanyAdminImpl implements _NewCompanyAdmin {
  _$NewCompanyAdminImpl(
      {required this.companyId, required this.userId, required this.role});

  factory _$NewCompanyAdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewCompanyAdminImplFromJson(json);

  @override
  String companyId;
  @override
  NewUser userId;
  @override
  Role role;

  @override
  String toString() {
    return 'NewCompanyAdmin(companyId: $companyId, userId: $userId, role: $role)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewCompanyAdminImplCopyWith<_$NewCompanyAdminImpl> get copyWith =>
      __$$NewCompanyAdminImplCopyWithImpl<_$NewCompanyAdminImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewCompanyAdminImplToJson(
      this,
    );
  }
}

abstract class _NewCompanyAdmin implements NewCompanyAdmin {
  factory _NewCompanyAdmin(
      {required String companyId,
      required NewUser userId,
      required Role role}) = _$NewCompanyAdminImpl;

  factory _NewCompanyAdmin.fromJson(Map<String, dynamic> json) =
      _$NewCompanyAdminImpl.fromJson;

  @override
  String get companyId;
  set companyId(String value);
  @override
  NewUser get userId;
  set userId(NewUser value);
  @override
  Role get role;
  set role(Role value);
  @override
  @JsonKey(ignore: true)
  _$$NewCompanyAdminImplCopyWith<_$NewCompanyAdminImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
