// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_admin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyAdminResponse _$CompanyAdminResponseFromJson(Map<String, dynamic> json) {
  return _CompanyAdminResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyAdminResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  CompanyAdmin? get result => throw _privateConstructorUsedError;
  set result(CompanyAdmin? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyAdminResponseCopyWith<CompanyAdminResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyAdminResponseCopyWith<$Res> {
  factory $CompanyAdminResponseCopyWith(CompanyAdminResponse value,
          $Res Function(CompanyAdminResponse) then) =
      _$CompanyAdminResponseCopyWithImpl<$Res, CompanyAdminResponse>;
  @useResult
  $Res call({int code, String? error, CompanyAdmin? result});

  $CompanyAdminCopyWith<$Res>? get result;
}

/// @nodoc
class _$CompanyAdminResponseCopyWithImpl<$Res,
        $Val extends CompanyAdminResponse>
    implements $CompanyAdminResponseCopyWith<$Res> {
  _$CompanyAdminResponseCopyWithImpl(this._value, this._then);

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
              as CompanyAdmin?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyAdminCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $CompanyAdminCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyAdminResponseImplCopyWith<$Res>
    implements $CompanyAdminResponseCopyWith<$Res> {
  factory _$$CompanyAdminResponseImplCopyWith(_$CompanyAdminResponseImpl value,
          $Res Function(_$CompanyAdminResponseImpl) then) =
      __$$CompanyAdminResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, CompanyAdmin? result});

  @override
  $CompanyAdminCopyWith<$Res>? get result;
}

/// @nodoc
class __$$CompanyAdminResponseImplCopyWithImpl<$Res>
    extends _$CompanyAdminResponseCopyWithImpl<$Res, _$CompanyAdminResponseImpl>
    implements _$$CompanyAdminResponseImplCopyWith<$Res> {
  __$$CompanyAdminResponseImplCopyWithImpl(_$CompanyAdminResponseImpl _value,
      $Res Function(_$CompanyAdminResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CompanyAdminResponseImpl(
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
              as CompanyAdmin?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyAdminResponseImpl implements _CompanyAdminResponse {
  _$CompanyAdminResponseImpl({this.code = -1, this.error, this.result});

  factory _$CompanyAdminResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyAdminResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  CompanyAdmin? result;

  @override
  String toString() {
    return 'CompanyAdminResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyAdminResponseImplCopyWith<_$CompanyAdminResponseImpl>
      get copyWith =>
          __$$CompanyAdminResponseImplCopyWithImpl<_$CompanyAdminResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyAdminResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyAdminResponse implements CompanyAdminResponse {
  factory _CompanyAdminResponse(
      {int code,
      String? error,
      CompanyAdmin? result}) = _$CompanyAdminResponseImpl;

  factory _CompanyAdminResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyAdminResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  CompanyAdmin? get result;
  set result(CompanyAdmin? value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyAdminResponseImplCopyWith<_$CompanyAdminResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
