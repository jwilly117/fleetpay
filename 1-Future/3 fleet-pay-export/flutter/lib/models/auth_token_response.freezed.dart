// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthTokenResponse _$AuthTokenResponseFromJson(Map<String, dynamic> json) {
  return _AuthTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthTokenResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  AuthToken? get result => throw _privateConstructorUsedError;
  set result(AuthToken? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenResponseCopyWith<AuthTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenResponseCopyWith<$Res> {
  factory $AuthTokenResponseCopyWith(
          AuthTokenResponse value, $Res Function(AuthTokenResponse) then) =
      _$AuthTokenResponseCopyWithImpl<$Res, AuthTokenResponse>;
  @useResult
  $Res call({int code, String? error, AuthToken? result});

  $AuthTokenCopyWith<$Res>? get result;
}

/// @nodoc
class _$AuthTokenResponseCopyWithImpl<$Res, $Val extends AuthTokenResponse>
    implements $AuthTokenResponseCopyWith<$Res> {
  _$AuthTokenResponseCopyWithImpl(this._value, this._then);

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
              as AuthToken?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $AuthTokenCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthTokenResponseImplCopyWith<$Res>
    implements $AuthTokenResponseCopyWith<$Res> {
  factory _$$AuthTokenResponseImplCopyWith(_$AuthTokenResponseImpl value,
          $Res Function(_$AuthTokenResponseImpl) then) =
      __$$AuthTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, AuthToken? result});

  @override
  $AuthTokenCopyWith<$Res>? get result;
}

/// @nodoc
class __$$AuthTokenResponseImplCopyWithImpl<$Res>
    extends _$AuthTokenResponseCopyWithImpl<$Res, _$AuthTokenResponseImpl>
    implements _$$AuthTokenResponseImplCopyWith<$Res> {
  __$$AuthTokenResponseImplCopyWithImpl(_$AuthTokenResponseImpl _value,
      $Res Function(_$AuthTokenResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$AuthTokenResponseImpl(
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
              as AuthToken?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenResponseImpl implements _AuthTokenResponse {
  _$AuthTokenResponseImpl({this.code = -1, this.error, this.result});

  factory _$AuthTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  AuthToken? result;

  @override
  String toString() {
    return 'AuthTokenResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenResponseImplCopyWith<_$AuthTokenResponseImpl> get copyWith =>
      __$$AuthTokenResponseImplCopyWithImpl<_$AuthTokenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthTokenResponse implements AuthTokenResponse {
  factory _AuthTokenResponse({int code, String? error, AuthToken? result}) =
      _$AuthTokenResponseImpl;

  factory _AuthTokenResponse.fromJson(Map<String, dynamic> json) =
      _$AuthTokenResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  AuthToken? get result;
  set result(AuthToken? value);
  @override
  @JsonKey(ignore: true)
  _$$AuthTokenResponseImplCopyWith<_$AuthTokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
