// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boolean_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooleanResponse _$BooleanResponseFromJson(Map<String, dynamic> json) {
  return _BooleanResponse.fromJson(json);
}

/// @nodoc
mixin _$BooleanResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  bool? get result => throw _privateConstructorUsedError;
  set result(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooleanResponseCopyWith<BooleanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanResponseCopyWith<$Res> {
  factory $BooleanResponseCopyWith(
          BooleanResponse value, $Res Function(BooleanResponse) then) =
      _$BooleanResponseCopyWithImpl<$Res, BooleanResponse>;
  @useResult
  $Res call({int code, String? error, bool? result});
}

/// @nodoc
class _$BooleanResponseCopyWithImpl<$Res, $Val extends BooleanResponse>
    implements $BooleanResponseCopyWith<$Res> {
  _$BooleanResponseCopyWithImpl(this._value, this._then);

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
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooleanResponseImplCopyWith<$Res>
    implements $BooleanResponseCopyWith<$Res> {
  factory _$$BooleanResponseImplCopyWith(_$BooleanResponseImpl value,
          $Res Function(_$BooleanResponseImpl) then) =
      __$$BooleanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, bool? result});
}

/// @nodoc
class __$$BooleanResponseImplCopyWithImpl<$Res>
    extends _$BooleanResponseCopyWithImpl<$Res, _$BooleanResponseImpl>
    implements _$$BooleanResponseImplCopyWith<$Res> {
  __$$BooleanResponseImplCopyWithImpl(
      _$BooleanResponseImpl _value, $Res Function(_$BooleanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$BooleanResponseImpl(
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
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanResponseImpl implements _BooleanResponse {
  _$BooleanResponseImpl({this.code = -1, this.error, this.result});

  factory _$BooleanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  bool? result;

  @override
  String toString() {
    return 'BooleanResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanResponseImplCopyWith<_$BooleanResponseImpl> get copyWith =>
      __$$BooleanResponseImplCopyWithImpl<_$BooleanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanResponseImplToJson(
      this,
    );
  }
}

abstract class _BooleanResponse implements BooleanResponse {
  factory _BooleanResponse({int code, String? error, bool? result}) =
      _$BooleanResponseImpl;

  factory _BooleanResponse.fromJson(Map<String, dynamic> json) =
      _$BooleanResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  bool? get result;
  set result(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$BooleanResponseImplCopyWith<_$BooleanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
