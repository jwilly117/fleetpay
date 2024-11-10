// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contractor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractorResponse _$ContractorResponseFromJson(Map<String, dynamic> json) {
  return _ContractorResponse.fromJson(json);
}

/// @nodoc
mixin _$ContractorResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  Contractor? get result => throw _privateConstructorUsedError;
  set result(Contractor? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorResponseCopyWith<ContractorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorResponseCopyWith<$Res> {
  factory $ContractorResponseCopyWith(
          ContractorResponse value, $Res Function(ContractorResponse) then) =
      _$ContractorResponseCopyWithImpl<$Res, ContractorResponse>;
  @useResult
  $Res call({int code, String? error, Contractor? result});

  $ContractorCopyWith<$Res>? get result;
}

/// @nodoc
class _$ContractorResponseCopyWithImpl<$Res, $Val extends ContractorResponse>
    implements $ContractorResponseCopyWith<$Res> {
  _$ContractorResponseCopyWithImpl(this._value, this._then);

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
              as Contractor?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractorCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ContractorCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractorResponseImplCopyWith<$Res>
    implements $ContractorResponseCopyWith<$Res> {
  factory _$$ContractorResponseImplCopyWith(_$ContractorResponseImpl value,
          $Res Function(_$ContractorResponseImpl) then) =
      __$$ContractorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, Contractor? result});

  @override
  $ContractorCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ContractorResponseImplCopyWithImpl<$Res>
    extends _$ContractorResponseCopyWithImpl<$Res, _$ContractorResponseImpl>
    implements _$$ContractorResponseImplCopyWith<$Res> {
  __$$ContractorResponseImplCopyWithImpl(_$ContractorResponseImpl _value,
      $Res Function(_$ContractorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ContractorResponseImpl(
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
              as Contractor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorResponseImpl implements _ContractorResponse {
  _$ContractorResponseImpl({this.code = -1, this.error, this.result});

  factory _$ContractorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  Contractor? result;

  @override
  String toString() {
    return 'ContractorResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorResponseImplCopyWith<_$ContractorResponseImpl> get copyWith =>
      __$$ContractorResponseImplCopyWithImpl<_$ContractorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorResponseImplToJson(
      this,
    );
  }
}

abstract class _ContractorResponse implements ContractorResponse {
  factory _ContractorResponse({int code, String? error, Contractor? result}) =
      _$ContractorResponseImpl;

  factory _ContractorResponse.fromJson(Map<String, dynamic> json) =
      _$ContractorResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  Contractor? get result;
  set result(Contractor? value);
  @override
  @JsonKey(ignore: true)
  _$$ContractorResponseImplCopyWith<_$ContractorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
