// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fund_request_preview_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FundRequestPreviewResponse _$FundRequestPreviewResponseFromJson(
    Map<String, dynamic> json) {
  return _FundRequestPreviewResponse.fromJson(json);
}

/// @nodoc
mixin _$FundRequestPreviewResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  FundRequestPreview? get result => throw _privateConstructorUsedError;
  set result(FundRequestPreview? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FundRequestPreviewResponseCopyWith<FundRequestPreviewResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundRequestPreviewResponseCopyWith<$Res> {
  factory $FundRequestPreviewResponseCopyWith(FundRequestPreviewResponse value,
          $Res Function(FundRequestPreviewResponse) then) =
      _$FundRequestPreviewResponseCopyWithImpl<$Res,
          FundRequestPreviewResponse>;
  @useResult
  $Res call({int code, String? error, FundRequestPreview? result});

  $FundRequestPreviewCopyWith<$Res>? get result;
}

/// @nodoc
class _$FundRequestPreviewResponseCopyWithImpl<$Res,
        $Val extends FundRequestPreviewResponse>
    implements $FundRequestPreviewResponseCopyWith<$Res> {
  _$FundRequestPreviewResponseCopyWithImpl(this._value, this._then);

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
              as FundRequestPreview?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FundRequestPreviewCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $FundRequestPreviewCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FundRequestPreviewResponseImplCopyWith<$Res>
    implements $FundRequestPreviewResponseCopyWith<$Res> {
  factory _$$FundRequestPreviewResponseImplCopyWith(
          _$FundRequestPreviewResponseImpl value,
          $Res Function(_$FundRequestPreviewResponseImpl) then) =
      __$$FundRequestPreviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, FundRequestPreview? result});

  @override
  $FundRequestPreviewCopyWith<$Res>? get result;
}

/// @nodoc
class __$$FundRequestPreviewResponseImplCopyWithImpl<$Res>
    extends _$FundRequestPreviewResponseCopyWithImpl<$Res,
        _$FundRequestPreviewResponseImpl>
    implements _$$FundRequestPreviewResponseImplCopyWith<$Res> {
  __$$FundRequestPreviewResponseImplCopyWithImpl(
      _$FundRequestPreviewResponseImpl _value,
      $Res Function(_$FundRequestPreviewResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$FundRequestPreviewResponseImpl(
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
              as FundRequestPreview?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundRequestPreviewResponseImpl implements _FundRequestPreviewResponse {
  _$FundRequestPreviewResponseImpl({this.code = -1, this.error, this.result});

  factory _$FundRequestPreviewResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FundRequestPreviewResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  FundRequestPreview? result;

  @override
  String toString() {
    return 'FundRequestPreviewResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FundRequestPreviewResponseImplCopyWith<_$FundRequestPreviewResponseImpl>
      get copyWith => __$$FundRequestPreviewResponseImplCopyWithImpl<
          _$FundRequestPreviewResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundRequestPreviewResponseImplToJson(
      this,
    );
  }
}

abstract class _FundRequestPreviewResponse
    implements FundRequestPreviewResponse {
  factory _FundRequestPreviewResponse(
      {int code,
      String? error,
      FundRequestPreview? result}) = _$FundRequestPreviewResponseImpl;

  factory _FundRequestPreviewResponse.fromJson(Map<String, dynamic> json) =
      _$FundRequestPreviewResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  FundRequestPreview? get result;
  set result(FundRequestPreview? value);
  @override
  @JsonKey(ignore: true)
  _$$FundRequestPreviewResponseImplCopyWith<_$FundRequestPreviewResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
