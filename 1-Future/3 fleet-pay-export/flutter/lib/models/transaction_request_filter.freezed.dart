// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionRequestFilter _$TransactionRequestFilterFromJson(
    Map<String, dynamic> json) {
  return _TransactionRequestFilter.fromJson(json);
}

/// @nodoc
mixin _$TransactionRequestFilter {
  String? get contractorId => throw _privateConstructorUsedError;
  set contractorId(String? value) => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  set startDate(DateTime? value) => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  set endDate(DateTime? value) => throw _privateConstructorUsedError;
  List<TransactionStatus>? get status => throw _privateConstructorUsedError;
  set status(List<TransactionStatus>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRequestFilterCopyWith<TransactionRequestFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRequestFilterCopyWith<$Res> {
  factory $TransactionRequestFilterCopyWith(TransactionRequestFilter value,
          $Res Function(TransactionRequestFilter) then) =
      _$TransactionRequestFilterCopyWithImpl<$Res, TransactionRequestFilter>;
  @useResult
  $Res call(
      {String? contractorId,
      DateTime? startDate,
      DateTime? endDate,
      List<TransactionStatus>? status});
}

/// @nodoc
class _$TransactionRequestFilterCopyWithImpl<$Res,
        $Val extends TransactionRequestFilter>
    implements $TransactionRequestFilterCopyWith<$Res> {
  _$TransactionRequestFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractorId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      contractorId: freezed == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<TransactionStatus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionRequestFilterImplCopyWith<$Res>
    implements $TransactionRequestFilterCopyWith<$Res> {
  factory _$$TransactionRequestFilterImplCopyWith(
          _$TransactionRequestFilterImpl value,
          $Res Function(_$TransactionRequestFilterImpl) then) =
      __$$TransactionRequestFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? contractorId,
      DateTime? startDate,
      DateTime? endDate,
      List<TransactionStatus>? status});
}

/// @nodoc
class __$$TransactionRequestFilterImplCopyWithImpl<$Res>
    extends _$TransactionRequestFilterCopyWithImpl<$Res,
        _$TransactionRequestFilterImpl>
    implements _$$TransactionRequestFilterImplCopyWith<$Res> {
  __$$TransactionRequestFilterImplCopyWithImpl(
      _$TransactionRequestFilterImpl _value,
      $Res Function(_$TransactionRequestFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractorId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_$TransactionRequestFilterImpl(
      contractorId: freezed == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<TransactionStatus>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionRequestFilterImpl implements _TransactionRequestFilter {
  _$TransactionRequestFilterImpl(
      {this.contractorId, this.startDate, this.endDate, this.status});

  factory _$TransactionRequestFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionRequestFilterImplFromJson(json);

  @override
  String? contractorId;
  @override
  DateTime? startDate;
  @override
  DateTime? endDate;
  @override
  List<TransactionStatus>? status;

  @override
  String toString() {
    return 'TransactionRequestFilter(contractorId: $contractorId, startDate: $startDate, endDate: $endDate, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionRequestFilterImplCopyWith<_$TransactionRequestFilterImpl>
      get copyWith => __$$TransactionRequestFilterImplCopyWithImpl<
          _$TransactionRequestFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionRequestFilterImplToJson(
      this,
    );
  }
}

abstract class _TransactionRequestFilter implements TransactionRequestFilter {
  factory _TransactionRequestFilter(
      {String? contractorId,
      DateTime? startDate,
      DateTime? endDate,
      List<TransactionStatus>? status}) = _$TransactionRequestFilterImpl;

  factory _TransactionRequestFilter.fromJson(Map<String, dynamic> json) =
      _$TransactionRequestFilterImpl.fromJson;

  @override
  String? get contractorId;
  set contractorId(String? value);
  @override
  DateTime? get startDate;
  set startDate(DateTime? value);
  @override
  DateTime? get endDate;
  set endDate(DateTime? value);
  @override
  List<TransactionStatus>? get status;
  set status(List<TransactionStatus>? value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionRequestFilterImplCopyWith<_$TransactionRequestFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
