// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_user_array_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyUserArrayResponse _$CompanyUserArrayResponseFromJson(
    Map<String, dynamic> json) {
  return _CompanyUserArrayResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanyUserArrayResponse {
  int get code => throw _privateConstructorUsedError;
  set code(int value) => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;
  List<CompanyUser>? get result => throw _privateConstructorUsedError;
  set result(List<CompanyUser>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyUserArrayResponseCopyWith<CompanyUserArrayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyUserArrayResponseCopyWith<$Res> {
  factory $CompanyUserArrayResponseCopyWith(CompanyUserArrayResponse value,
          $Res Function(CompanyUserArrayResponse) then) =
      _$CompanyUserArrayResponseCopyWithImpl<$Res, CompanyUserArrayResponse>;
  @useResult
  $Res call({int code, String? error, List<CompanyUser>? result});
}

/// @nodoc
class _$CompanyUserArrayResponseCopyWithImpl<$Res,
        $Val extends CompanyUserArrayResponse>
    implements $CompanyUserArrayResponseCopyWith<$Res> {
  _$CompanyUserArrayResponseCopyWithImpl(this._value, this._then);

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
              as List<CompanyUser>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyUserArrayResponseImplCopyWith<$Res>
    implements $CompanyUserArrayResponseCopyWith<$Res> {
  factory _$$CompanyUserArrayResponseImplCopyWith(
          _$CompanyUserArrayResponseImpl value,
          $Res Function(_$CompanyUserArrayResponseImpl) then) =
      __$$CompanyUserArrayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String? error, List<CompanyUser>? result});
}

/// @nodoc
class __$$CompanyUserArrayResponseImplCopyWithImpl<$Res>
    extends _$CompanyUserArrayResponseCopyWithImpl<$Res,
        _$CompanyUserArrayResponseImpl>
    implements _$$CompanyUserArrayResponseImplCopyWith<$Res> {
  __$$CompanyUserArrayResponseImplCopyWithImpl(
      _$CompanyUserArrayResponseImpl _value,
      $Res Function(_$CompanyUserArrayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? error = freezed,
    Object? result = freezed,
  }) {
    return _then(_$CompanyUserArrayResponseImpl(
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
              as List<CompanyUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyUserArrayResponseImpl implements _CompanyUserArrayResponse {
  _$CompanyUserArrayResponseImpl({this.code = -1, this.error, this.result});

  factory _$CompanyUserArrayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyUserArrayResponseImplFromJson(json);

  @override
  @JsonKey()
  int code;
  @override
  String? error;
  @override
  List<CompanyUser>? result;

  @override
  String toString() {
    return 'CompanyUserArrayResponse(code: $code, error: $error, result: $result)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyUserArrayResponseImplCopyWith<_$CompanyUserArrayResponseImpl>
      get copyWith => __$$CompanyUserArrayResponseImplCopyWithImpl<
          _$CompanyUserArrayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyUserArrayResponseImplToJson(
      this,
    );
  }
}

abstract class _CompanyUserArrayResponse implements CompanyUserArrayResponse {
  factory _CompanyUserArrayResponse(
      {int code,
      String? error,
      List<CompanyUser>? result}) = _$CompanyUserArrayResponseImpl;

  factory _CompanyUserArrayResponse.fromJson(Map<String, dynamic> json) =
      _$CompanyUserArrayResponseImpl.fromJson;

  @override
  int get code;
  set code(int value);
  @override
  String? get error;
  set error(String? value);
  @override
  List<CompanyUser>? get result;
  set result(List<CompanyUser>? value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyUserArrayResponseImplCopyWith<_$CompanyUserArrayResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
