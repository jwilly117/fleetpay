// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedTransactions _$PaginatedTransactionsFromJson(
    Map<String, dynamic> json) {
  return _PaginatedTransactions.fromJson(json);
}

/// @nodoc
mixin _$PaginatedTransactions {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  set transactions(List<Transaction> value) =>
      throw _privateConstructorUsedError;
  PaginationMetadata get metadata => throw _privateConstructorUsedError;
  set metadata(PaginationMetadata value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedTransactionsCopyWith<PaginatedTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedTransactionsCopyWith<$Res> {
  factory $PaginatedTransactionsCopyWith(PaginatedTransactions value,
          $Res Function(PaginatedTransactions) then) =
      _$PaginatedTransactionsCopyWithImpl<$Res, PaginatedTransactions>;
  @useResult
  $Res call(
      {String id, List<Transaction> transactions, PaginationMetadata metadata});

  $PaginationMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$PaginatedTransactionsCopyWithImpl<$Res,
        $Val extends PaginatedTransactions>
    implements $PaginatedTransactionsCopyWith<$Res> {
  _$PaginatedTransactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactions = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PaginationMetadata,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationMetadataCopyWith<$Res> get metadata {
    return $PaginationMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedTransactionsImplCopyWith<$Res>
    implements $PaginatedTransactionsCopyWith<$Res> {
  factory _$$PaginatedTransactionsImplCopyWith(
          _$PaginatedTransactionsImpl value,
          $Res Function(_$PaginatedTransactionsImpl) then) =
      __$$PaginatedTransactionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, List<Transaction> transactions, PaginationMetadata metadata});

  @override
  $PaginationMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$PaginatedTransactionsImplCopyWithImpl<$Res>
    extends _$PaginatedTransactionsCopyWithImpl<$Res,
        _$PaginatedTransactionsImpl>
    implements _$$PaginatedTransactionsImplCopyWith<$Res> {
  __$$PaginatedTransactionsImplCopyWithImpl(_$PaginatedTransactionsImpl _value,
      $Res Function(_$PaginatedTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactions = null,
    Object? metadata = null,
  }) {
    return _then(_$PaginatedTransactionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PaginationMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedTransactionsImpl implements _PaginatedTransactions {
  _$PaginatedTransactionsImpl(
      {required this.id, required this.transactions, required this.metadata});

  factory _$PaginatedTransactionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedTransactionsImplFromJson(json);

  @override
  String id;
  @override
  List<Transaction> transactions;
  @override
  PaginationMetadata metadata;

  @override
  String toString() {
    return 'PaginatedTransactions(id: $id, transactions: $transactions, metadata: $metadata)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedTransactionsImplCopyWith<_$PaginatedTransactionsImpl>
      get copyWith => __$$PaginatedTransactionsImplCopyWithImpl<
          _$PaginatedTransactionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedTransactionsImplToJson(
      this,
    );
  }
}

abstract class _PaginatedTransactions implements PaginatedTransactions {
  factory _PaginatedTransactions(
      {required String id,
      required List<Transaction> transactions,
      required PaginationMetadata metadata}) = _$PaginatedTransactionsImpl;

  factory _PaginatedTransactions.fromJson(Map<String, dynamic> json) =
      _$PaginatedTransactionsImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  List<Transaction> get transactions;
  set transactions(List<Transaction> value);
  @override
  PaginationMetadata get metadata;
  set metadata(PaginationMetadata value);
  @override
  @JsonKey(ignore: true)
  _$$PaginatedTransactionsImplCopyWith<_$PaginatedTransactionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
