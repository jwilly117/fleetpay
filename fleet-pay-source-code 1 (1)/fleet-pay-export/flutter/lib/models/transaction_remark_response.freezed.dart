// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_remark_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionRemarkResponse _$TransactionRemarkResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionRemarkResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionRemarkResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  TransactionRemark? get result => throw _privateConstructorUsedError;
  set result(TransactionRemark? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRemarkResponseCopyWith<TransactionRemarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRemarkResponseCopyWith<$Res> {
  factory $TransactionRemarkResponseCopyWith(TransactionRemarkResponse value,
          $Res Function(TransactionRemarkResponse) then) =
      _$TransactionRemarkResponseCopyWithImpl<$Res, TransactionRemarkResponse>;
  @useResult
  $Res call({int code, String? error, TransactionRemark? result});

  $TransactionRemarkCopyWith<$Res>? get result;
}

/// @nodoc
class _$TransactionRemarkResponseCopyWithImpl<$Res,
        $Val extends TransactionRemarkResponse>
    implements $TransactionRemarkResponseCopyWith<$Res> {
  _$TransactionRemarkResponseCopyWithImpl(this._value, this._then);

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
              as TransactionRemark?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionRemarkCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $TransactionRemarkCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionRemarkResponseImplCopyWith<$Res>
    implements $TransactionRemarkResponseCopyWith<$Res> {
  factory _$$TransactionRemarkResponseImplCopyWith(
          _$TransactionRemarkResponseImpl value,
          $Res Function(_$TransactionRemarkResponseImpl) then) =
      __$$TransactionRemarkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, TransactionRemark? result});

  @override
  $TransactionRemarkCopyWith<$Res>? get result;
}

/// @nodoc
class __$$TransactionRemarkResponseImplCopyWithImpl<$Res>
    extends _$TransactionRemarkResponseCopyWithImpl<$Res,
        _$TransactionRemarkResponseImpl>
    implements _$$TransactionRemarkResponseImplCopyWith<$Res> {
  __$$TransactionRemarkResponseImplCopyWithImpl(
      _$TransactionRemarkResponseImpl _value,
      $Res Function(_$TransactionRemarkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$TransactionRemarkResponseImpl(
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
              as TransactionRemark?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionRemarkResponseImpl implements _TransactionRemarkResponse {
  _$TransactionRemarkResponseImpl({this.code = -1, this.error, this.result});

  factory _$TransactionRemarkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionRemarkResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  TransactionRemark? result;

  @override
  String toString() {
    return 'TransactionRemarkResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionRemarkResponseImplCopyWith<_$TransactionRemarkResponseImpl>
      get copyWith => __$$TransactionRemarkResponseImplCopyWithImpl<
          _$TransactionRemarkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionRemarkResponseImplToJson(
      this,
    );
  }
}

abstract class _TransactionRemarkResponse implements TransactionRemarkResponse {
  factory _TransactionRemarkResponse(
      {int code,
      String? error,
      TransactionRemark? result}) = _$TransactionRemarkResponseImpl;

  factory _TransactionRemarkResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionRemarkResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  TransactionRemark? get result;
  set result(TransactionRemark? value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionRemarkResponseImplCopyWith<_$TransactionRemarkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
