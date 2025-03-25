// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentStructure _$PaymentStructureFromJson(Map<String, dynamic> json) {
  return _PaymentStructure.fromJson(json);
}

/// @nodoc
mixin _$PaymentStructure {
  PaymentInterval get paymentInterval => throw _privateConstructorUsedError;
  set paymentInterval(PaymentInterval value) =>
      throw _privateConstructorUsedError;
  DateTime get cycleStartDate => throw _privateConstructorUsedError;
  set cycleStartDate(DateTime value) => throw _privateConstructorUsedError;
  DateTime? get cycleEndDate => throw _privateConstructorUsedError;
  set cycleEndDate(DateTime? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentStructureCopyWith<PaymentStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStructureCopyWith<$Res> {
  factory $PaymentStructureCopyWith(
          PaymentStructure value, $Res Function(PaymentStructure) then) =
      _$PaymentStructureCopyWithImpl<$Res, PaymentStructure>;
  @useResult
  $Res call(
      {PaymentInterval paymentInterval,
      DateTime cycleStartDate,
      DateTime? cycleEndDate});
}

/// @nodoc
class _$PaymentStructureCopyWithImpl<$Res, $Val extends PaymentStructure>
    implements $PaymentStructureCopyWith<$Res> {
  _$PaymentStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentInterval = null,
    Object? cycleStartDate = null,
    Object? cycleEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      paymentInterval: null == paymentInterval
          ? _value.paymentInterval
          : paymentInterval // ignore: cast_nullable_to_non_nullable
              as PaymentInterval,
      cycleStartDate: null == cycleStartDate
          ? _value.cycleStartDate
          : cycleStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cycleEndDate: freezed == cycleEndDate
          ? _value.cycleEndDate
          : cycleEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStructureImplCopyWith<$Res>
    implements $PaymentStructureCopyWith<$Res> {
  factory _$$PaymentStructureImplCopyWith(_$PaymentStructureImpl value,
          $Res Function(_$PaymentStructureImpl) then) =
      __$$PaymentStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentInterval paymentInterval,
      DateTime cycleStartDate,
      DateTime? cycleEndDate});
}

/// @nodoc
class __$$PaymentStructureImplCopyWithImpl<$Res>
    extends _$PaymentStructureCopyWithImpl<$Res, _$PaymentStructureImpl>
    implements _$$PaymentStructureImplCopyWith<$Res> {
  __$$PaymentStructureImplCopyWithImpl(_$PaymentStructureImpl _value,
      $Res Function(_$PaymentStructureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentInterval = null,
    Object? cycleStartDate = null,
    Object? cycleEndDate = freezed,
  }) {
    return _then(_$PaymentStructureImpl(
      paymentInterval: null == paymentInterval
          ? _value.paymentInterval
          : paymentInterval // ignore: cast_nullable_to_non_nullable
              as PaymentInterval,
      cycleStartDate: null == cycleStartDate
          ? _value.cycleStartDate
          : cycleStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cycleEndDate: freezed == cycleEndDate
          ? _value.cycleEndDate
          : cycleEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentStructureImpl implements _PaymentStructure {
  _$PaymentStructureImpl(
      {required this.paymentInterval,
      required this.cycleStartDate,
      this.cycleEndDate});

  factory _$PaymentStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentStructureImplFromJson(json);

  @override
  PaymentInterval paymentInterval;
  @override
  DateTime cycleStartDate;
  @override
  DateTime? cycleEndDate;

  @override
  String toString() {
    return 'PaymentStructure(paymentInterval: $paymentInterval, cycleStartDate: $cycleStartDate, cycleEndDate: $cycleEndDate)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStructureImplCopyWith<_$PaymentStructureImpl> get copyWith =>
      __$$PaymentStructureImplCopyWithImpl<_$PaymentStructureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentStructureImplToJson(
      this,
    );
  }
}

abstract class _PaymentStructure implements PaymentStructure {
  factory _PaymentStructure(
      {required PaymentInterval paymentInterval,
      required DateTime cycleStartDate,
      DateTime? cycleEndDate}) = _$PaymentStructureImpl;

  factory _PaymentStructure.fromJson(Map<String, dynamic> json) =
      _$PaymentStructureImpl.fromJson;

  @override
  PaymentInterval get paymentInterval;
  set paymentInterval(PaymentInterval value);
  @override
  DateTime get cycleStartDate;
  set cycleStartDate(DateTime value);
  @override
  DateTime? get cycleEndDate;
  set cycleEndDate(DateTime? value);
  @override
  @JsonKey(ignore: true)
  _$$PaymentStructureImplCopyWith<_$PaymentStructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
