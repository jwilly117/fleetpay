// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_admin_array_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyAdminArrayResponse _$CompanyAdminArrayResponseFromJson(
    Map<String, dynamic> json) {
  return _CompanyAdminArrayResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyAdminArrayResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  List<CompanyAdmin>? get result => throw _privateConstructorUsedError;
  set result(List<CompanyAdmin>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyAdminArrayResponseCopyWith<CompanyAdminArrayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyAdminArrayResponseCopyWith<$Res> {
  factory $CompanyAdminArrayResponseCopyWith(CompanyAdminArrayResponse value,
          $Res Function(CompanyAdminArrayResponse) then) =
      _$CompanyAdminArrayResponseCopyWithImpl<$Res, CompanyAdminArrayResponse>;
  @useResult
  $Res call({int code, String? error, List<CompanyAdmin>? result});
}

/// @nodoc
class _$CompanyAdminArrayResponseCopyWithImpl<$Res,
        $Val extends CompanyAdminArrayResponse>
    implements $CompanyAdminArrayResponseCopyWith<$Res> {
  _$CompanyAdminArrayResponseCopyWithImpl(this._value, this._then);

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
              as List<CompanyAdmin>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyAdminArrayResponseImplCopyWith<$Res>
    implements $CompanyAdminArrayResponseCopyWith<$Res> {
  factory _$$CompanyAdminArrayResponseImplCopyWith(
          _$CompanyAdminArrayResponseImpl value,
          $Res Function(_$CompanyAdminArrayResponseImpl) then) =
      __$$CompanyAdminArrayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, List<CompanyAdmin>? result});
}

/// @nodoc
class __$$CompanyAdminArrayResponseImplCopyWithImpl<$Res>
    extends _$CompanyAdminArrayResponseCopyWithImpl<$Res,
        _$CompanyAdminArrayResponseImpl>
    implements _$$CompanyAdminArrayResponseImplCopyWith<$Res> {
  __$$CompanyAdminArrayResponseImplCopyWithImpl(
      _$CompanyAdminArrayResponseImpl _value,
      $Res Function(_$CompanyAdminArrayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CompanyAdminArrayResponseImpl(
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
              as List<CompanyAdmin>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyAdminArrayResponseImpl implements _CompanyAdminArrayResponse {
  _$CompanyAdminArrayResponseImpl({this.code = -1, this.error, this.result});

  factory _$CompanyAdminArrayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyAdminArrayResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  List<CompanyAdmin>? result;

  @override
  String toString() {
    return 'CompanyAdminArrayResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyAdminArrayResponseImplCopyWith<_$CompanyAdminArrayResponseImpl>
      get copyWith => __$$CompanyAdminArrayResponseImplCopyWithImpl<
          _$CompanyAdminArrayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyAdminArrayResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyAdminArrayResponse implements CompanyAdminArrayResponse {
  factory _CompanyAdminArrayResponse(
      {int code,
      String? error,
      List<CompanyAdmin>? result}) = _$CompanyAdminArrayResponseImpl;

  factory _CompanyAdminArrayResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyAdminArrayResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  List<CompanyAdmin>? get result;
  set result(List<CompanyAdmin>? value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyAdminArrayResponseImplCopyWith<_$CompanyAdminArrayResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
