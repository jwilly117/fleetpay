// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'funding_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FundingSetting _$FundingSettingFromJson(Map<String, dynamic> json) {
  return _FundingSetting.fromJson(json);
}

/// @nodoc
mixin _$FundingSetting {
  FundingLimitType get fundingLimitType => throw _privateConstructorUsedError;
  set fundingLimitType(FundingLimitType value) =>
      throw _privateConstructorUsedError;
  num get fundingLimit => throw _privateConstructorUsedError;
  set fundingLimit(num value) => throw _privateConstructorUsedError;
  num get transactionFee => throw _privateConstructorUsedError;
  set transactionFee(num value) => throw _privateConstructorUsedError;
  num get postageFee => throw _privateConstructorUsedError;
  set postageFee(num value) => throw _privateConstructorUsedError;
  num get fundingAmount => throw _privateConstructorUsedError;
  set fundingAmount(num value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FundingSettingCopyWith<FundingSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundingSettingCopyWith<$Res> {
  factory $FundingSettingCopyWith(
          FundingSetting value, $Res Function(FundingSetting) then) =
      _$FundingSettingCopyWithImpl<$Res, FundingSetting>;
  @useResult
  $Res call(
      {FundingLimitType fundingLimitType,
      num fundingLimit,
      num transactionFee,
      num postageFee,
      num fundingAmount});
}

/// @nodoc
class _$FundingSettingCopyWithImpl<$Res, $Val extends FundingSetting>
    implements $FundingSettingCopyWith<$Res> {
  _$FundingSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fundingLimitType = null,
    Object? fundingLimit = null,
    Object? transactionFee = null,
    Object? postageFee = null,
    Object? fundingAmount = null,
  }) {
    return _then(_value.copyWith(
      fundingLimitType: null == fundingLimitType
          ? _value.fundingLimitType
          : fundingLimitType // ignore: cast_nullable_to_non_nullable
              as FundingLimitType,
      fundingLimit: null == fundingLimit
          ? _value.fundingLimit
          : fundingLimit // ignore: cast_nullable_to_non_nullable
              as num,
      transactionFee: null == transactionFee
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as num,
      postageFee: null == postageFee
          ? _value.postageFee
          : postageFee // ignore: cast_nullable_to_non_nullable
              as num,
      fundingAmount: null == fundingAmount
          ? _value.fundingAmount
          : fundingAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundingSettingImplCopyWith<$Res>
    implements $FundingSettingCopyWith<$Res> {
  factory _$$FundingSettingImplCopyWith(_$FundingSettingImpl value,
          $Res Function(_$FundingSettingImpl) then) =
      __$$FundingSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FundingLimitType fundingLimitType,
      num fundingLimit,
      num transactionFee,
      num postageFee,
      num fundingAmount});
}

/// @nodoc
class __$$FundingSettingImplCopyWithImpl<$Res>
    extends _$FundingSettingCopyWithImpl<$Res, _$FundingSettingImpl>
    implements _$$FundingSettingImplCopyWith<$Res> {
  __$$FundingSettingImplCopyWithImpl(
      _$FundingSettingImpl _value, $Res Function(_$FundingSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fundingLimitType = null,
    Object? fundingLimit = null,
    Object? transactionFee = null,
    Object? postageFee = null,
    Object? fundingAmount = null,
  }) {
    return _then(_$FundingSettingImpl(
      fundingLimitType: null == fundingLimitType
          ? _value.fundingLimitType
          : fundingLimitType // ignore: cast_nullable_to_non_nullable
              as FundingLimitType,
      fundingLimit: null == fundingLimit
          ? _value.fundingLimit
          : fundingLimit // ignore: cast_nullable_to_non_nullable
              as num,
      transactionFee: null == transactionFee
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as num,
      postageFee: null == postageFee
          ? _value.postageFee
          : postageFee // ignore: cast_nullable_to_non_nullable
              as num,
      fundingAmount: null == fundingAmount
          ? _value.fundingAmount
          : fundingAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundingSettingImpl implements _FundingSetting {
  _$FundingSettingImpl(
      {required this.fundingLimitType,
      required this.fundingLimit,
      required this.transactionFee,
      required this.postageFee,
      required this.fundingAmount});

  factory _$FundingSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundingSettingImplFromJson(json);

  @override
  FundingLimitType fundingLimitType;
  @override
  num fundingLimit;
  @override
  num transactionFee;
  @override
  num postageFee;
  @override
  num fundingAmount;

  @override
  String toString() {
    return 'FundingSetting(fundingLimitType: $fundingLimitType, fundingLimit: $fundingLimit, transactionFee: $transactionFee, postageFee: $postageFee, fundingAmount: $fundingAmount)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FundingSettingImplCopyWith<_$FundingSettingImpl> get copyWith =>
      __$$FundingSettingImplCopyWithImpl<_$FundingSettingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundingSettingImplToJson(
      this,
    );
  }
}

abstract class _FundingSetting implements FundingSetting {
  factory _FundingSetting(
      {required FundingLimitType fundingLimitType,
      required num fundingLimit,
      required num transactionFee,
      required num postageFee,
      required num fundingAmount}) = _$FundingSettingImpl;

  factory _FundingSetting.fromJson(Map<String, dynamic> json) =
      _$FundingSettingImpl.fromJson;

  @override
  FundingLimitType get fundingLimitType;
  set fundingLimitType(FundingLimitType value);
  @override
  num get fundingLimit;
  set fundingLimit(num value);
  @override
  num get transactionFee;
  set transactionFee(num value);
  @override
  num get postageFee;
  set postageFee(num value);
  @override
  num get fundingAmount;
  set fundingAmount(num value);
  @override
  @JsonKey(ignore: true)
  _$$FundingSettingImplCopyWith<_$FundingSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
