// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserUpdateRequest _$UserUpdateRequestFromJson(Map<String, dynamic> json) {
  return _UserUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateRequest {
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  set profilePicture(String? value) => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  List<String>? get fcmTokens => throw _privateConstructorUsedError;
  set fcmTokens(List<String>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserUpdateRequestCopyWith<UserUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateRequestCopyWith<$Res> {
  factory $UserUpdateRequestCopyWith(
          UserUpdateRequest value, $Res Function(UserUpdateRequest) then) =
      _$UserUpdateRequestCopyWithImpl<$Res, UserUpdateRequest>;
  @useResult
  $Res call(
      {String? name,
      String? profilePicture,
      String? phoneNumber,
      List<String>? fcmTokens});
}

/// @nodoc
class _$UserUpdateRequestCopyWithImpl<$Res, $Val extends UserUpdateRequest>
    implements $UserUpdateRequestCopyWith<$Res> {
  _$UserUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? fcmTokens = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmTokens: freezed == fcmTokens
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateRequestImplCopyWith<$Res>
    implements $UserUpdateRequestCopyWith<$Res> {
  factory _$$UserUpdateRequestImplCopyWith(_$UserUpdateRequestImpl value,
          $Res Function(_$UserUpdateRequestImpl) then) =
      __$$UserUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? profilePicture,
      String? phoneNumber,
      List<String>? fcmTokens});
}

/// @nodoc
class __$$UserUpdateRequestImplCopyWithImpl<$Res>
    extends _$UserUpdateRequestCopyWithImpl<$Res, _$UserUpdateRequestImpl>
    implements _$$UserUpdateRequestImplCopyWith<$Res> {
  __$$UserUpdateRequestImplCopyWithImpl(_$UserUpdateRequestImpl _value,
      $Res Function(_$UserUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? phoneNumber = freezed,
    Object? fcmTokens = freezed,
  }) {
    return _then(_$UserUpdateRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmTokens: freezed == fcmTokens
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUpdateRequestImpl implements _UserUpdateRequest {
  _$UserUpdateRequestImpl(
      {this.name, this.profilePicture, this.phoneNumber, this.fcmTokens});

  factory _$UserUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateRequestImplFromJson(json);

  @override
  String? name;
  @override
  String? profilePicture;
  @override
  String? phoneNumber;
  @override
  List<String>? fcmTokens;

  @override
  String toString() {
    return 'UserUpdateRequest(name: $name, profilePicture: $profilePicture, phoneNumber: $phoneNumber, fcmTokens: $fcmTokens)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateRequestImplCopyWith<_$UserUpdateRequestImpl> get copyWith =>
      __$$UserUpdateRequestImplCopyWithImpl<_$UserUpdateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateRequest implements UserUpdateRequest {
  factory _UserUpdateRequest(
      {String? name,
      String? profilePicture,
      String? phoneNumber,
      List<String>? fcmTokens}) = _$UserUpdateRequestImpl;

  factory _UserUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$UserUpdateRequestImpl.fromJson;

  @override
  String? get name;
  set name(String? value);
  @override
  String? get profilePicture;
  set profilePicture(String? value);
  @override
  String? get phoneNumber;
  set phoneNumber(String? value);
  @override
  List<String>? get fcmTokens;
  set fcmTokens(List<String>? value);
  @override
  @JsonKey(ignore: true)
  _$$UserUpdateRequestImplCopyWith<_$UserUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
