// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'string_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StringResponse _$StringResponseFromJson(Map<String, dynamic> json) {
  return _StringResponse.fromJson(json);
}

/// @nodoc
mixin _$StringResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  set result(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringResponseCopyWith<StringResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringResponseCopyWith<$Res> {
  factory $StringResponseCopyWith(
          StringResponse value, $Res Function(StringResponse) then) =
      _$StringResponseCopyWithImpl<$Res, StringResponse>;
  @useResult
  $Res call({int code, String? error, String? result});
}

/// @nodoc
class _$StringResponseCopyWithImpl<$Res, $Val extends StringResponse>
    implements $StringResponseCopyWith<$Res> {
  _$StringResponseCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringResponseImplCopyWith<$Res>
    implements $StringResponseCopyWith<$Res> {
  factory _$$StringResponseImplCopyWith(_$StringResponseImpl value,
          $Res Function(_$StringResponseImpl) then) =
      __$$StringResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, String? result});
}

/// @nodoc
class __$$StringResponseImplCopyWithImpl<$Res>
    extends _$StringResponseCopyWithImpl<$Res, _$StringResponseImpl>
    implements _$$StringResponseImplCopyWith<$Res> {
  __$$StringResponseImplCopyWithImpl(
      _$StringResponseImpl _value, $Res Function(_$StringResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$StringResponseImpl(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringResponseImpl implements _StringResponse {
  _$StringResponseImpl({this.code = -1, this.error, this.result});

  factory _$StringResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  String? result;

  @override
  String toString() {
    return 'StringResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringResponseImplCopyWith<_$StringResponseImpl> get copyWith =>
      __$$StringResponseImplCopyWithImpl<_$StringResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringResponseImplToJson(
      this,
    );
  }
}

abstract class _StringResponse implements StringResponse {
  factory _StringResponse({int code, String? error, String? result}) =
      _$StringResponseImpl;

  factory _StringResponse.fromJson(Map<String, dynamic> json) =
      _$StringResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  String? get result;
  set result(String? value);
  @override
  @JsonKey(ignore: true)
  _$$StringResponseImplCopyWith<_$StringResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
