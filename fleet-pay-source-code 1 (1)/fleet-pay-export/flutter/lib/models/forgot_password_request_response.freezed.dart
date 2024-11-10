// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordRequestResponse _$ForgotPasswordRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _ForgotPasswordRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordRequestResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  ForgotPasswordRequest? get result => throw _privateConstructorUsedError;
  set result(ForgotPasswordRequest? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordRequestResponseCopyWith<ForgotPasswordRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordRequestResponseCopyWith<$Res> {
  factory $ForgotPasswordRequestResponseCopyWith(
          ForgotPasswordRequestResponse value,
          $Res Function(ForgotPasswordRequestResponse) then) =
      _$ForgotPasswordRequestResponseCopyWithImpl<$Res,
          ForgotPasswordRequestResponse>;
  @useResult
  $Res call({int code, String? error, ForgotPasswordRequest? result});

  $ForgotPasswordRequestCopyWith<$Res>? get result;
}

/// @nodoc
class _$ForgotPasswordRequestResponseCopyWithImpl<$Res,
        $Val extends ForgotPasswordRequestResponse>
    implements $ForgotPasswordRequestResponseCopyWith<$Res> {
  _$ForgotPasswordRequestResponseCopyWithImpl(this._value, this._then);

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
              as ForgotPasswordRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgotPasswordRequestCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ForgotPasswordRequestCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotPasswordRequestResponseImplCopyWith<$Res>
    implements $ForgotPasswordRequestResponseCopyWith<$Res> {
  factory _$$ForgotPasswordRequestResponseImplCopyWith(
          _$ForgotPasswordRequestResponseImpl value,
          $Res Function(_$ForgotPasswordRequestResponseImpl) then) =
      __$$ForgotPasswordRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, ForgotPasswordRequest? result});

  @override
  $ForgotPasswordRequestCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ForgotPasswordRequestResponseImplCopyWithImpl<$Res>
    extends _$ForgotPasswordRequestResponseCopyWithImpl<$Res,
        _$ForgotPasswordRequestResponseImpl>
    implements _$$ForgotPasswordRequestResponseImplCopyWith<$Res> {
  __$$ForgotPasswordRequestResponseImplCopyWithImpl(
      _$ForgotPasswordRequestResponseImpl _value,
      $Res Function(_$ForgotPasswordRequestResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ForgotPasswordRequestResponseImpl(
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
              as ForgotPasswordRequest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordRequestResponseImpl
    implements _ForgotPasswordRequestResponse {
  _$ForgotPasswordRequestResponseImpl(
      {this.code = -1, this.error, this.result});

  factory _$ForgotPasswordRequestResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ForgotPasswordRequestResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  ForgotPasswordRequest? result;

  @override
  String toString() {
    return 'ForgotPasswordRequestResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordRequestResponseImplCopyWith<
          _$ForgotPasswordRequestResponseImpl>
      get copyWith => __$$ForgotPasswordRequestResponseImplCopyWithImpl<
          _$ForgotPasswordRequestResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordRequestResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordRequestResponse
    implements ForgotPasswordRequestResponse {
  factory _ForgotPasswordRequestResponse(
      {int code,
      String? error,
      ForgotPasswordRequest? result}) = _$ForgotPasswordRequestResponseImpl;

  factory _ForgotPasswordRequestResponse.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordRequestResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  ForgotPasswordRequest? get result;
  set result(ForgotPasswordRequest? value);
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordRequestResponseImplCopyWith<
          _$ForgotPasswordRequestResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
