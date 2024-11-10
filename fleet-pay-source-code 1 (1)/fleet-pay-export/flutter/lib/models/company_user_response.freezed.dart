// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyUserResponse _$CompanyUserResponseFromJson(Map<String, dynamic> json) {
  return _CompanyUserResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyUserResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  CompanyUser? get result => throw _privateConstructorUsedError;
  set result(CompanyUser? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyUserResponseCopyWith<CompanyUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyUserResponseCopyWith<$Res> {
  factory $CompanyUserResponseCopyWith(
          CompanyUserResponse value, $Res Function(CompanyUserResponse) then) =
      _$CompanyUserResponseCopyWithImpl<$Res, CompanyUserResponse>;
  @useResult
  $Res call({int code, String? error, CompanyUser? result});

  $CompanyUserCopyWith<$Res>? get result;
}

/// @nodoc
class _$CompanyUserResponseCopyWithImpl<$Res, $Val extends CompanyUserResponse>
    implements $CompanyUserResponseCopyWith<$Res> {
  _$CompanyUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CompanyUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyUserCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $CompanyUserCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyUserResponseImplCopyWith<$Res>
    implements $CompanyUserResponseCopyWith<$Res> {
  factory _$$CompanyUserResponseImplCopyWith(_$CompanyUserResponseImpl value,
          $Res Function(_$CompanyUserResponseImpl) then) =
      __$$CompanyUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, CompanyUser? result});

  @override
  $CompanyUserCopyWith<$Res>? get result;
}

/// @nodoc
class __$$CompanyUserResponseImplCopyWithImpl<$Res>
    extends _$CompanyUserResponseCopyWithImpl<$Res, _$CompanyUserResponseImpl>
    implements _$$CompanyUserResponseImplCopyWith<$Res> {
  __$$CompanyUserResponseImplCopyWithImpl(_$CompanyUserResponseImpl _value,
      $Res Function(_$CompanyUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CompanyUserResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CompanyUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyUserResponseImpl implements _CompanyUserResponse {
  _$CompanyUserResponseImpl({this.code = -1, this.error, this.result});

  factory _$CompanyUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyUserResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  CompanyUser? result;

  @override
  String toString() {
    return 'CompanyUserResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyUserResponseImplCopyWith<_$CompanyUserResponseImpl> get copyWith =>
      __$$CompanyUserResponseImplCopyWithImpl<_$CompanyUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyUserResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyUserResponse implements CompanyUserResponse {
  factory _CompanyUserResponse({int code, String? error, CompanyUser? result}) =
      _$CompanyUserResponseImpl;

  factory _CompanyUserResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyUserResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  CompanyUser? get result;
  set result(CompanyUser? value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyUserResponseImplCopyWith<_$CompanyUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
