// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_array_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionArrayResponse _$TransactionArrayResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionArrayResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionArrayResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  List<Transaction>? get result => throw _privateConstructorUsedError;
  set result(List<Transaction>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionArrayResponseCopyWith<TransactionArrayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionArrayResponseCopyWith<$Res> {
  factory $TransactionArrayResponseCopyWith(TransactionArrayResponse value,
          $Res Function(TransactionArrayResponse) then) =
      _$TransactionArrayResponseCopyWithImpl<$Res, TransactionArrayResponse>;
  @useResult
  $Res call({int code, String? error, List<Transaction>? result});
}

/// @nodoc
class _$TransactionArrayResponseCopyWithImpl<$Res,
        $Val extends TransactionArrayResponse>
    implements $TransactionArrayResponseCopyWith<$Res> {
  _$TransactionArrayResponseCopyWithImpl(this._value, this._then);

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
              as List<Transaction>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionArrayResponseImplCopyWith<$Res>
    implements $TransactionArrayResponseCopyWith<$Res> {
  factory _$$TransactionArrayResponseImplCopyWith(
          _$TransactionArrayResponseImpl value,
          $Res Function(_$TransactionArrayResponseImpl) then) =
      __$$TransactionArrayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, List<Transaction>? result});
}

/// @nodoc
class __$$TransactionArrayResponseImplCopyWithImpl<$Res>
    extends _$TransactionArrayResponseCopyWithImpl<$Res,
        _$TransactionArrayResponseImpl>
    implements _$$TransactionArrayResponseImplCopyWith<$Res> {
  __$$TransactionArrayResponseImplCopyWithImpl(
      _$TransactionArrayResponseImpl _value,
      $Res Function(_$TransactionArrayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$TransactionArrayResponseImpl(
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
              as List<Transaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionArrayResponseImpl implements _TransactionArrayResponse {
  _$TransactionArrayResponseImpl({this.code = -1, this.error, this.result});

  factory _$TransactionArrayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionArrayResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  List<Transaction>? result;

  @override
  String toString() {
    return 'TransactionArrayResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionArrayResponseImplCopyWith<_$TransactionArrayResponseImpl>
      get copyWith => __$$TransactionArrayResponseImplCopyWithImpl<
          _$TransactionArrayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionArrayResponseImplToJson(
      this,
    );
  }
}

abstract class _TransactionArrayResponse implements TransactionArrayResponse {
  factory _TransactionArrayResponse(
      {int code,
      String? error,
      List<Transaction>? result}) = _$TransactionArrayResponseImpl;

  factory _TransactionArrayResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionArrayResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  List<Transaction>? get result;
  set result(List<Transaction>? value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionArrayResponseImplCopyWith<_$TransactionArrayResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
