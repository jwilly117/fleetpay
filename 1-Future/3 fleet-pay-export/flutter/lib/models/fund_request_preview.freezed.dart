// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fund_request_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FundRequestPreview _$FundRequestPreviewFromJson(Map<String, dynamic> json) {
  return _FundRequestPreview.fromJson(json);
}

/// @nodoc
mixin _$FundRequestPreview {
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  set contractorId(String value) => throw _privateConstructorUsedError;
  num get requestedAmount => throw _privateConstructorUsedError;
  set requestedAmount(num value) => throw _privateConstructorUsedError;
  num get fee => throw _privateConstructorUsedError;
  set fee(num value) => throw _privateConstructorUsedError;
  num get postageFee => throw _privateConstructorUsedError;
  set postageFee(num value) => throw _privateConstructorUsedError;
  num get netAmount => throw _privateConstructorUsedError;
  set netAmount(num value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FundRequestPreviewCopyWith<FundRequestPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundRequestPreviewCopyWith<$Res> {
  factory $FundRequestPreviewCopyWith(
          FundRequestPreview value, $Res Function(FundRequestPreview) then) =
      _$FundRequestPreviewCopyWithImpl<$Res, FundRequestPreview>;
  @useResult
  $Res call(
      {String companyId,
      String contractorId,
      num requestedAmount,
      num fee,
      num postageFee,
      num netAmount});
}

/// @nodoc
class _$FundRequestPreviewCopyWithImpl<$Res, $Val extends FundRequestPreview>
    implements $FundRequestPreviewCopyWith<$Res> {
  _$FundRequestPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? contractorId = null,
    Object? requestedAmount = null,
    Object? fee = null,
    Object? postageFee = null,
    Object? netAmount = null,
  }) {
    return _then(_value.copyWith(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAmount: null == requestedAmount
          ? _value.requestedAmount
          : requestedAmount // ignore: cast_nullable_to_non_nullable
              as num,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as num,
      postageFee: null == postageFee
          ? _value.postageFee
          : postageFee // ignore: cast_nullable_to_non_nullable
              as num,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundRequestPreviewImplCopyWith<$Res>
    implements $FundRequestPreviewCopyWith<$Res> {
  factory _$$FundRequestPreviewImplCopyWith(_$FundRequestPreviewImpl value,
          $Res Function(_$FundRequestPreviewImpl) then) =
      __$$FundRequestPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String companyId,
      String contractorId,
      num requestedAmount,
      num fee,
      num postageFee,
      num netAmount});
}

/// @nodoc
class __$$FundRequestPreviewImplCopyWithImpl<$Res>
    extends _$FundRequestPreviewCopyWithImpl<$Res, _$FundRequestPreviewImpl>
    implements _$$FundRequestPreviewImplCopyWith<$Res> {
  __$$FundRequestPreviewImplCopyWithImpl(_$FundRequestPreviewImpl _value,
      $Res Function(_$FundRequestPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? contractorId = null,
    Object? requestedAmount = null,
    Object? fee = null,
    Object? postageFee = null,
    Object? netAmount = null,
  }) {
    return _then(_$FundRequestPreviewImpl(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      requestedAmount: null == requestedAmount
          ? _value.requestedAmount
          : requestedAmount // ignore: cast_nullable_to_non_nullable
              as num,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as num,
      postageFee: null == postageFee
          ? _value.postageFee
          : postageFee // ignore: cast_nullable_to_non_nullable
              as num,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundRequestPreviewImpl implements _FundRequestPreview {
  _$FundRequestPreviewImpl(
      {required this.companyId,
      required this.contractorId,
      required this.requestedAmount,
      required this.fee,
      required this.postageFee,
      required this.netAmount});

  factory _$FundRequestPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundRequestPreviewImplFromJson(json);

  @override
  String companyId;
  @override
  String contractorId;
  @override
  num requestedAmount;
  @override
  num fee;
  @override
  num postageFee;
  @override
  num netAmount;

  @override
  String toString() {
    return 'FundRequestPreview(companyId: $companyId, contractorId: $contractorId, requestedAmount: $requestedAmount, fee: $fee, postageFee: $postageFee, netAmount: $netAmount)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FundRequestPreviewImplCopyWith<_$FundRequestPreviewImpl> get copyWith =>
      __$$FundRequestPreviewImplCopyWithImpl<_$FundRequestPreviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundRequestPreviewImplToJson(
      this,
    );
  }
}

abstract class _FundRequestPreview implements FundRequestPreview {
  factory _FundRequestPreview(
      {required String companyId,
      required String contractorId,
      required num requestedAmount,
      required num fee,
      required num postageFee,
      required num netAmount}) = _$FundRequestPreviewImpl;

  factory _FundRequestPreview.fromJson(Map<String, dynamic> json) =
      _$FundRequestPreviewImpl.fromJson;

  @override
  String get companyId;
  set companyId(String value);
  @override
  String get contractorId;
  set contractorId(String value);
  @override
  num get requestedAmount;
  set requestedAmount(num value);
  @override
  num get fee;
  set fee(num value);
  @override
  num get postageFee;
  set postageFee(num value);
  @override
  num get netAmount;
  set netAmount(num value);
  @override
  @JsonKey(ignore: true)
  _$$FundRequestPreviewImplCopyWith<_$FundRequestPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
