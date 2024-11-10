// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageRequest _$PageRequestFromJson(Map<String, dynamic> json) {
  return _PageRequest.fromJson(json);
}

/// @nodoc
mixin _$PageRequest {
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  set size(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageRequestCopyWith<PageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageRequestCopyWith<$Res> {
  factory $PageRequestCopyWith(
          PageRequest value, $Res Function(PageRequest) then) =
      _$PageRequestCopyWithImpl<$Res, PageRequest>;
  @useResult
  $Res call({int page, int size});
}

/// @nodoc
class _$PageRequestCopyWithImpl<$Res, $Val extends PageRequest>
    implements $PageRequestCopyWith<$Res> {
  _$PageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageRequestImplCopyWith<$Res>
    implements $PageRequestCopyWith<$Res> {
  factory _$$PageRequestImplCopyWith(
          _$PageRequestImpl value, $Res Function(_$PageRequestImpl) then) =
      __$$PageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int size});
}

/// @nodoc
class __$$PageRequestImplCopyWithImpl<$Res>
    extends _$PageRequestCopyWithImpl<$Res, _$PageRequestImpl>
    implements _$$PageRequestImplCopyWith<$Res> {
  __$$PageRequestImplCopyWithImpl(
      _$PageRequestImpl _value, $Res Function(_$PageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_$PageRequestImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageRequestImpl implements _PageRequest {
  _$PageRequestImpl({required this.page, required this.size});

  factory _$PageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageRequestImplFromJson(json);

  @override
  int page;
  @override
  int size;

  @override
  String toString() {
    return 'PageRequest(page: $page, size: $size)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageRequestImplCopyWith<_$PageRequestImpl> get copyWith =>
      __$$PageRequestImplCopyWithImpl<_$PageRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageRequestImplToJson(
      this,
    );
  }
}

abstract class _PageRequest implements PageRequest {
  factory _PageRequest({required int page, required int size}) =
      _$PageRequestImpl;

  factory _PageRequest.fromJson(Map<String, dynamic> json) =
      _$PageRequestImpl.fromJson;

  @override
  int get page;
  set page(int value);
  @override
  int get size;
  set size(int value);
  @override
  @JsonKey(ignore: true)
  _$$PageRequestImplCopyWith<_$PageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
