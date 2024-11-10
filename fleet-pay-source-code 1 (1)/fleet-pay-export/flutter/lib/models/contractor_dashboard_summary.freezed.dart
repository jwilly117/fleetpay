// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contractor_dashboard_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractorDashboardSummary _$ContractorDashboardSummaryFromJson(
    Map<String, dynamic> json) {
  return _ContractorDashboardSummary.fromJson(json);
}

/// @nodoc
mixin _$ContractorDashboardSummary {
  num get totalFunds => throw _privateConstructorUsedError;
  set totalFunds(num value) => throw _privateConstructorUsedError;
  num get pendingFunds => throw _privateConstructorUsedError;
  set pendingFunds(num value) => throw _privateConstructorUsedError;
  num get approvedFunds => throw _privateConstructorUsedError;
  set approvedFunds(num value) => throw _privateConstructorUsedError;
  num get usedFunds => throw _privateConstructorUsedError;
  set usedFunds(num value) => throw _privateConstructorUsedError;
  num get availableFund => throw _privateConstructorUsedError;
  set availableFund(num value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorDashboardSummaryCopyWith<ContractorDashboardSummary>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorDashboardSummaryCopyWith<$Res> {
  factory $ContractorDashboardSummaryCopyWith(ContractorDashboardSummary value,
          $Res Function(ContractorDashboardSummary) then) =
      _$ContractorDashboardSummaryCopyWithImpl<$Res,
          ContractorDashboardSummary>;
  @useResult
  $Res call(
      {num totalFunds,
      num pendingFunds,
      num approvedFunds,
      num usedFunds,
      num availableFund});
}

/// @nodoc
class _$ContractorDashboardSummaryCopyWithImpl<$Res,
        $Val extends ContractorDashboardSummary>
    implements $ContractorDashboardSummaryCopyWith<$Res> {
  _$ContractorDashboardSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFunds = null,
    Object? pendingFunds = null,
    Object? approvedFunds = null,
    Object? usedFunds = null,
    Object? availableFund = null,
  }) {
    return _then(_value.copyWith(
      totalFunds: null == totalFunds
          ? _value.totalFunds
          : totalFunds // ignore: cast_nullable_to_non_nullable
              as num,
      pendingFunds: null == pendingFunds
          ? _value.pendingFunds
          : pendingFunds // ignore: cast_nullable_to_non_nullable
              as num,
      approvedFunds: null == approvedFunds
          ? _value.approvedFunds
          : approvedFunds // ignore: cast_nullable_to_non_nullable
              as num,
      usedFunds: null == usedFunds
          ? _value.usedFunds
          : usedFunds // ignore: cast_nullable_to_non_nullable
              as num,
      availableFund: null == availableFund
          ? _value.availableFund
          : availableFund // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractorDashboardSummaryImplCopyWith<$Res>
    implements $ContractorDashboardSummaryCopyWith<$Res> {
  factory _$$ContractorDashboardSummaryImplCopyWith(
          _$ContractorDashboardSummaryImpl value,
          $Res Function(_$ContractorDashboardSummaryImpl) then) =
      __$$ContractorDashboardSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num totalFunds,
      num pendingFunds,
      num approvedFunds,
      num usedFunds,
      num availableFund});
}

/// @nodoc
class __$$ContractorDashboardSummaryImplCopyWithImpl<$Res>
    extends _$ContractorDashboardSummaryCopyWithImpl<$Res,
        _$ContractorDashboardSummaryImpl>
    implements _$$ContractorDashboardSummaryImplCopyWith<$Res> {
  __$$ContractorDashboardSummaryImplCopyWithImpl(
      _$ContractorDashboardSummaryImpl _value,
      $Res Function(_$ContractorDashboardSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFunds = null,
    Object? pendingFunds = null,
    Object? approvedFunds = null,
    Object? usedFunds = null,
    Object? availableFund = null,
  }) {
    return _then(_$ContractorDashboardSummaryImpl(
      totalFunds: null == totalFunds
          ? _value.totalFunds
          : totalFunds // ignore: cast_nullable_to_non_nullable
              as num,
      pendingFunds: null == pendingFunds
          ? _value.pendingFunds
          : pendingFunds // ignore: cast_nullable_to_non_nullable
              as num,
      approvedFunds: null == approvedFunds
          ? _value.approvedFunds
          : approvedFunds // ignore: cast_nullable_to_non_nullable
              as num,
      usedFunds: null == usedFunds
          ? _value.usedFunds
          : usedFunds // ignore: cast_nullable_to_non_nullable
              as num,
      availableFund: null == availableFund
          ? _value.availableFund
          : availableFund // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorDashboardSummaryImpl implements _ContractorDashboardSummary {
  _$ContractorDashboardSummaryImpl(
      {required this.totalFunds,
      required this.pendingFunds,
      required this.approvedFunds,
      required this.usedFunds,
      required this.availableFund});

  factory _$ContractorDashboardSummaryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ContractorDashboardSummaryImplFromJson(json);

  @override
  num totalFunds;
  @override
  num pendingFunds;
  @override
  num approvedFunds;
  @override
  num usedFunds;
  @override
  num availableFund;

  @override
  String toString() {
    return 'ContractorDashboardSummary(totalFunds: $totalFunds, pendingFunds: $pendingFunds, approvedFunds: $approvedFunds, usedFunds: $usedFunds, availableFund: $availableFund)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorDashboardSummaryImplCopyWith<_$ContractorDashboardSummaryImpl>
      get copyWith => __$$ContractorDashboardSummaryImplCopyWithImpl<
          _$ContractorDashboardSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorDashboardSummaryImplToJson(
      this,
    );
  }
}

abstract class _ContractorDashboardSummary
    implements ContractorDashboardSummary {
  factory _ContractorDashboardSummary(
      {required num totalFunds,
      required num pendingFunds,
      required num approvedFunds,
      required num usedFunds,
      required num availableFund}) = _$ContractorDashboardSummaryImpl;

  factory _ContractorDashboardSummary.fromJson(Map<String, dynamic> json) =
      _$ContractorDashboardSummaryImpl.fromJson;

  @override
  num get totalFunds;
  set totalFunds(num value);
  @override
  num get pendingFunds;
  set pendingFunds(num value);
  @override
  num get approvedFunds;
  set approvedFunds(num value);
  @override
  num get usedFunds;
  set usedFunds(num value);
  @override
  num get availableFund;
  set availableFund(num value);
  @override
  @JsonKey(ignore: true)
  _$$ContractorDashboardSummaryImplCopyWith<_$ContractorDashboardSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
