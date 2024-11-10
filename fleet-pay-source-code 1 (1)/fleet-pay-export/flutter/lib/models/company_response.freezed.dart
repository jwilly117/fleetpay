// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyResponse _$CompanyResponseFromJson(Map<String, dynamic> json) {
  return _CompanyResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  Company? get result => throw _privateConstructorUsedError;
  set result(Company? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyResponseCopyWith<CompanyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyResponseCopyWith<$Res> {
  factory $CompanyResponseCopyWith(
          CompanyResponse value, $Res Function(CompanyResponse) then) =
      _$CompanyResponseCopyWithImpl<$Res, CompanyResponse>;
  @useResult
  $Res call({int code, String? error, Company? result});

  $CompanyCopyWith<$Res>? get result;
}

/// @nodoc
class _$CompanyResponseCopyWithImpl<$Res, $Val extends CompanyResponse>
    implements $CompanyResponseCopyWith<$Res> {
  _$CompanyResponseCopyWithImpl(this._value, this._then);

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
              as Company?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyResponseImplCopyWith<$Res>
    implements $CompanyResponseCopyWith<$Res> {
  factory _$$CompanyResponseImplCopyWith(_$CompanyResponseImpl value,
          $Res Function(_$CompanyResponseImpl) then) =
      __$$CompanyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, Company? result});

  @override
  $CompanyCopyWith<$Res>? get result;
}

/// @nodoc
class __$$CompanyResponseImplCopyWithImpl<$Res>
    extends _$CompanyResponseCopyWithImpl<$Res, _$CompanyResponseImpl>
    implements _$$CompanyResponseImplCopyWith<$Res> {
  __$$CompanyResponseImplCopyWithImpl(
      _$CompanyResponseImpl _value, $Res Function(_$CompanyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CompanyResponseImpl(
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
              as Company?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyResponseImpl implements _CompanyResponse {
  _$CompanyResponseImpl({this.code = -1, this.error, this.result});

  factory _$CompanyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  Company? result;

  @override
  String toString() {
    return 'CompanyResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyResponseImplCopyWith<_$CompanyResponseImpl> get copyWith =>
      __$$CompanyResponseImplCopyWithImpl<_$CompanyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyResponse implements CompanyResponse {
  factory _CompanyResponse({int code, String? error, Company? result}) =
      _$CompanyResponseImpl;

  factory _CompanyResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  Company? get result;
  set result(Company? value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyResponseImplCopyWith<_$CompanyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
