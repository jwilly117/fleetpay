// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_transactions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedTransactionsResponse _$PaginatedTransactionsResponseFromJson(
    Map<String, dynamic> json) {
  return _PaginatedTransactionsResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginatedTransactionsResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  PaginatedTransactions? get result => throw _privateConstructorUsedError;
  set result(PaginatedTransactions? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedTransactionsResponseCopyWith<PaginatedTransactionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedTransactionsResponseCopyWith<$Res> {
  factory $PaginatedTransactionsResponseCopyWith(
          PaginatedTransactionsResponse value,
          $Res Function(PaginatedTransactionsResponse) then) =
      _$PaginatedTransactionsResponseCopyWithImpl<$Res,
          PaginatedTransactionsResponse>;
  @useResult
  $Res call({int code, String? error, PaginatedTransactions? result});

  $PaginatedTransactionsCopyWith<$Res>? get result;
}

/// @nodoc
class _$PaginatedTransactionsResponseCopyWithImpl<$Res,
        $Val extends PaginatedTransactionsResponse>
    implements $PaginatedTransactionsResponseCopyWith<$Res> {
  _$PaginatedTransactionsResponseCopyWithImpl(this._value, this._then);

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
              as PaginatedTransactions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginatedTransactionsCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $PaginatedTransactionsCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedTransactionsResponseImplCopyWith<$Res>
    implements $PaginatedTransactionsResponseCopyWith<$Res> {
  factory _$$PaginatedTransactionsResponseImplCopyWith(
          _$PaginatedTransactionsResponseImpl value,
          $Res Function(_$PaginatedTransactionsResponseImpl) then) =
      __$$PaginatedTransactionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, PaginatedTransactions? result});

  @override
  $PaginatedTransactionsCopyWith<$Res>? get result;
}

/// @nodoc
class __$$PaginatedTransactionsResponseImplCopyWithImpl<$Res>
    extends _$PaginatedTransactionsResponseCopyWithImpl<$Res,
        _$PaginatedTransactionsResponseImpl>
    implements _$$PaginatedTransactionsResponseImplCopyWith<$Res> {
  __$$PaginatedTransactionsResponseImplCopyWithImpl(
      _$PaginatedTransactionsResponseImpl _value,
      $Res Function(_$PaginatedTransactionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$PaginatedTransactionsResponseImpl(
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
              as PaginatedTransactions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedTransactionsResponseImpl
    implements _PaginatedTransactionsResponse {
  _$PaginatedTransactionsResponseImpl(
      {this.code = -1, this.error, this.result});

  factory _$PaginatedTransactionsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaginatedTransactionsResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  PaginatedTransactions? result;

  @override
  String toString() {
    return 'PaginatedTransactionsResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedTransactionsResponseImplCopyWith<
          _$PaginatedTransactionsResponseImpl>
      get copyWith => __$$PaginatedTransactionsResponseImplCopyWithImpl<
          _$PaginatedTransactionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedTransactionsResponseImplToJson(
      this,
    );
  }
}

abstract class _PaginatedTransactionsResponse
    implements PaginatedTransactionsResponse {
  factory _PaginatedTransactionsResponse(
      {int code,
      String? error,
      PaginatedTransactions? result}) = _$PaginatedTransactionsResponseImpl;

  factory _PaginatedTransactionsResponse.fromJson(Map<String, dynamic> json) =
      _$PaginatedTransactionsResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  PaginatedTransactions? get result;
  set result(PaginatedTransactions? value);
  @override
  @JsonKey(ignore: true)
  _$$PaginatedTransactionsResponseImplCopyWith<
          _$PaginatedTransactionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
