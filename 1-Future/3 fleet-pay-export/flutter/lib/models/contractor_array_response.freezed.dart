// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contractor_array_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractorArrayResponse _$ContractorArrayResponseFromJson(
    Map<String, dynamic> json) {
  return _ContractorArrayResponse.fromJson(json);
}

/// @nodoc
mixin _$ContractorArrayResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  List<Contractor>? get result => throw _privateConstructorUsedError;
  set result(List<Contractor>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorArrayResponseCopyWith<ContractorArrayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorArrayResponseCopyWith<$Res> {
  factory $ContractorArrayResponseCopyWith(ContractorArrayResponse value,
          $Res Function(ContractorArrayResponse) then) =
      _$ContractorArrayResponseCopyWithImpl<$Res, ContractorArrayResponse>;
  @useResult
  $Res call({int code, String? error, List<Contractor>? result});
}

/// @nodoc
class _$ContractorArrayResponseCopyWithImpl<$Res,
        $Val extends ContractorArrayResponse>
    implements $ContractorArrayResponseCopyWith<$Res> {
  _$ContractorArrayResponseCopyWithImpl(this._value, this._then);

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
              as List<Contractor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractorArrayResponseImplCopyWith<$Res>
    implements $ContractorArrayResponseCopyWith<$Res> {
  factory _$$ContractorArrayResponseImplCopyWith(
          _$ContractorArrayResponseImpl value,
          $Res Function(_$ContractorArrayResponseImpl) then) =
      __$$ContractorArrayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, List<Contractor>? result});
}

/// @nodoc
class __$$ContractorArrayResponseImplCopyWithImpl<$Res>
    extends _$ContractorArrayResponseCopyWithImpl<$Res,
        _$ContractorArrayResponseImpl>
    implements _$$ContractorArrayResponseImplCopyWith<$Res> {
  __$$ContractorArrayResponseImplCopyWithImpl(
      _$ContractorArrayResponseImpl _value,
      $Res Function(_$ContractorArrayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ContractorArrayResponseImpl(
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
              as List<Contractor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorArrayResponseImpl implements _ContractorArrayResponse {
  _$ContractorArrayResponseImpl({this.code = -1, this.error, this.result});

  factory _$ContractorArrayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorArrayResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  List<Contractor>? result;

  @override
  String toString() {
    return 'ContractorArrayResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorArrayResponseImplCopyWith<_$ContractorArrayResponseImpl>
      get copyWith => __$$ContractorArrayResponseImplCopyWithImpl<
          _$ContractorArrayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorArrayResponseImplToJson(
      this,
    );
  }
}

abstract class _ContractorArrayResponse implements ContractorArrayResponse {
  factory _ContractorArrayResponse(
      {int code,
      String? error,
      List<Contractor>? result}) = _$ContractorArrayResponseImpl;

  factory _ContractorArrayResponse.fromJson(Map<String, dynamic> json) =
      _$ContractorArrayResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  List<Contractor>? get result;
  set result(List<Contractor>? value);
  @override
  @JsonKey(ignore: true)
  _$$ContractorArrayResponseImplCopyWith<_$ContractorArrayResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
