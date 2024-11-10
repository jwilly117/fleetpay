// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationMetadata _$PaginationMetadataFromJson(Map<String, dynamic> json) {
  return _PaginationMetadata.fromJson(json);
}

/// @nodoc
mixin _$PaginationMetadata {
  int get total => throw _privateConstructorUsedError;
  set total(int value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  set size(int value) => throw _privateConstructorUsedError;
  bool get previous => throw _privateConstructorUsedError;
  set previous(bool value) => throw _privateConstructorUsedError;
  bool get next => throw _privateConstructorUsedError;
  set next(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationMetadataCopyWith<PaginationMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationMetadataCopyWith<$Res> {
  factory $PaginationMetadataCopyWith(
          PaginationMetadata value, $Res Function(PaginationMetadata) then) =
      _$PaginationMetadataCopyWithImpl<$Res, PaginationMetadata>;
  @useResult
  $Res call({int total, int page, int size, bool previous, bool next});
}

/// @nodoc
class _$PaginationMetadataCopyWithImpl<$Res, $Val extends PaginationMetadata>
    implements $PaginationMetadataCopyWith<$Res> {
  _$PaginationMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? previous = null,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as bool,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationMetadataImplCopyWith<$Res>
    implements $PaginationMetadataCopyWith<$Res> {
  factory _$$PaginationMetadataImplCopyWith(_$PaginationMetadataImpl value,
          $Res Function(_$PaginationMetadataImpl) then) =
      __$$PaginationMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int size, bool previous, bool next});
}

/// @nodoc
class __$$PaginationMetadataImplCopyWithImpl<$Res>
    extends _$PaginationMetadataCopyWithImpl<$Res, _$PaginationMetadataImpl>
    implements _$$PaginationMetadataImplCopyWith<$Res> {
  __$$PaginationMetadataImplCopyWithImpl(_$PaginationMetadataImpl _value,
      $Res Function(_$PaginationMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? previous = null,
    Object? next = null,
  }) {
    return _then(_$PaginationMetadataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as bool,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationMetadataImpl implements _PaginationMetadata {
  _$PaginationMetadataImpl(
      {required this.total,
      required this.page,
      required this.size,
      required this.previous,
      required this.next});

  factory _$PaginationMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationMetadataImplFromJson(json);

  @override
  int total;
  @override
  int page;
  @override
  int size;
  @override
  bool previous;
  @override
  bool next;

  @override
  String toString() {
    return 'PaginationMetadata(total: $total, page: $page, size: $size, previous: $previous, next: $next)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationMetadataImplCopyWith<_$PaginationMetadataImpl> get copyWith =>
      __$$PaginationMetadataImplCopyWithImpl<_$PaginationMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationMetadataImplToJson(
      this,
    );
  }
}

abstract class _PaginationMetadata implements PaginationMetadata {
  factory _PaginationMetadata(
      {required int total,
      required int page,
      required int size,
      required bool previous,
      required bool next}) = _$PaginationMetadataImpl;

  factory _PaginationMetadata.fromJson(Map<String, dynamic> json) =
      _$PaginationMetadataImpl.fromJson;

  @override
  int get total;
  set total(int value);
  @override
  int get page;
  set page(int value);
  @override
  int get size;
  set size(int value);
  @override
  bool get previous;
  set previous(bool value);
  @override
  bool get next;
  set next(bool value);
  @override
  @JsonKey(ignore: true)
  _$$PaginationMetadataImplCopyWith<_$PaginationMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
