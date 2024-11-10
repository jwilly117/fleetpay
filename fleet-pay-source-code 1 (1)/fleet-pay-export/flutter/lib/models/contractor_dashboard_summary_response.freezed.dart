// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contractor_dashboard_summary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractorDashboardSummaryResponse _$ContractorDashboardSummaryResponseFromJson(
    Map<String, dynamic> json) {
  return _ContractorDashboardSummaryResponse.fromJson(json);
}

/// @nodoc
mixin _$ContractorDashboardSummaryResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  ContractorDashboardSummary? get result => throw _privateConstructorUsedError;
  set result(ContractorDashboardSummary? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorDashboardSummaryResponseCopyWith<
          ContractorDashboardSummaryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorDashboardSummaryResponseCopyWith<$Res> {
  factory $ContractorDashboardSummaryResponseCopyWith(
          ContractorDashboardSummaryResponse value,
          $Res Function(ContractorDashboardSummaryResponse) then) =
      _$ContractorDashboardSummaryResponseCopyWithImpl<$Res,
          ContractorDashboardSummaryResponse>;
  @useResult
  $Res call({int code, String? error, ContractorDashboardSummary? result});

  $ContractorDashboardSummaryCopyWith<$Res>? get result;
}

/// @nodoc
class _$ContractorDashboardSummaryResponseCopyWithImpl<$Res,
        $Val extends ContractorDashboardSummaryResponse>
    implements $ContractorDashboardSummaryResponseCopyWith<$Res> {
  _$ContractorDashboardSummaryResponseCopyWithImpl(this._value, this._then);

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
              as ContractorDashboardSummary?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractorDashboardSummaryCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ContractorDashboardSummaryCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractorDashboardSummaryResponseImplCopyWith<$Res>
    implements $ContractorDashboardSummaryResponseCopyWith<$Res> {
  factory _$$ContractorDashboardSummaryResponseImplCopyWith(
          _$ContractorDashboardSummaryResponseImpl value,
          $Res Function(_$ContractorDashboardSummaryResponseImpl) then) =
      __$$ContractorDashboardSummaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, ContractorDashboardSummary? result});

  @override
  $ContractorDashboardSummaryCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ContractorDashboardSummaryResponseImplCopyWithImpl<$Res>
    extends _$ContractorDashboardSummaryResponseCopyWithImpl<$Res,
        _$ContractorDashboardSummaryResponseImpl>
    implements _$$ContractorDashboardSummaryResponseImplCopyWith<$Res> {
  __$$ContractorDashboardSummaryResponseImplCopyWithImpl(
      _$ContractorDashboardSummaryResponseImpl _value,
      $Res Function(_$ContractorDashboardSummaryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ContractorDashboardSummaryResponseImpl(
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
              as ContractorDashboardSummary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorDashboardSummaryResponseImpl
    implements _ContractorDashboardSummaryResponse {
  _$ContractorDashboardSummaryResponseImpl(
      {this.code = -1, this.error, this.result});

  factory _$ContractorDashboardSummaryResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ContractorDashboardSummaryResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  ContractorDashboardSummary? result;

  @override
  String toString() {
    return 'ContractorDashboardSummaryResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorDashboardSummaryResponseImplCopyWith<
          _$ContractorDashboardSummaryResponseImpl>
      get copyWith => __$$ContractorDashboardSummaryResponseImplCopyWithImpl<
          _$ContractorDashboardSummaryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorDashboardSummaryResponseImplToJson(
      this,
    );
  }
}

abstract class _ContractorDashboardSummaryResponse
    implements ContractorDashboardSummaryResponse {
  factory _ContractorDashboardSummaryResponse(
          {int code, String? error, ContractorDashboardSummary? result}) =
      _$ContractorDashboardSummaryResponseImpl;

  factory _ContractorDashboardSummaryResponse.fromJson(
          Map<String, dynamic> json) =
      _$ContractorDashboardSummaryResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  ContractorDashboardSummary? get result;
  set result(ContractorDashboardSummary? value);
  @override
  @JsonKey(ignore: true)
  _$$ContractorDashboardSummaryResponseImplCopyWith<
          _$ContractorDashboardSummaryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
