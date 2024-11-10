// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_business_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyBusinessHours _$CompanyBusinessHoursFromJson(Map<String, dynamic> json) {
  return _CompanyBusinessHours.fromJson(json);
}

/// @nodoc
mixin _$CompanyBusinessHours {
  String get openingHour => throw _privateConstructorUsedError;
  set openingHour(String value) => throw _privateConstructorUsedError;
  String get closingHour => throw _privateConstructorUsedError;
  set closingHour(String value) => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  set timezone(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyBusinessHoursCopyWith<CompanyBusinessHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyBusinessHoursCopyWith<$Res> {
  factory $CompanyBusinessHoursCopyWith(CompanyBusinessHours value,
          $Res Function(CompanyBusinessHours) then) =
      _$CompanyBusinessHoursCopyWithImpl<$Res, CompanyBusinessHours>;
  @useResult
  $Res call({String openingHour, String closingHour, String timezone});
}

/// @nodoc
class _$CompanyBusinessHoursCopyWithImpl<$Res,
        $Val extends CompanyBusinessHours>
    implements $CompanyBusinessHoursCopyWith<$Res> {
  _$CompanyBusinessHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingHour = null,
    Object? closingHour = null,
    Object? timezone = null,
  }) {
    return _then(_value.copyWith(
      openingHour: null == openingHour
          ? _value.openingHour
          : openingHour // ignore: cast_nullable_to_non_nullable
              as String,
      closingHour: null == closingHour
          ? _value.closingHour
          : closingHour // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyBusinessHoursImplCopyWith<$Res>
    implements $CompanyBusinessHoursCopyWith<$Res> {
  factory _$$CompanyBusinessHoursImplCopyWith(_$CompanyBusinessHoursImpl value,
          $Res Function(_$CompanyBusinessHoursImpl) then) =
      __$$CompanyBusinessHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String openingHour, String closingHour, String timezone});
}

/// @nodoc
class __$$CompanyBusinessHoursImplCopyWithImpl<$Res>
    extends _$CompanyBusinessHoursCopyWithImpl<$Res, _$CompanyBusinessHoursImpl>
    implements _$$CompanyBusinessHoursImplCopyWith<$Res> {
  __$$CompanyBusinessHoursImplCopyWithImpl(_$CompanyBusinessHoursImpl _value,
      $Res Function(_$CompanyBusinessHoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingHour = null,
    Object? closingHour = null,
    Object? timezone = null,
  }) {
    return _then(_$CompanyBusinessHoursImpl(
      openingHour: null == openingHour
          ? _value.openingHour
          : openingHour // ignore: cast_nullable_to_non_nullable
              as String,
      closingHour: null == closingHour
          ? _value.closingHour
          : closingHour // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyBusinessHoursImpl implements _CompanyBusinessHours {
  _$CompanyBusinessHoursImpl(
      {required this.openingHour,
      required this.closingHour,
      required this.timezone});

  factory _$CompanyBusinessHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyBusinessHoursImplFromJson(json);

  @override
  String openingHour;
  @override
  String closingHour;
  @override
  String timezone;

  @override
  String toString() {
    return 'CompanyBusinessHours(openingHour: $openingHour, closingHour: $closingHour, timezone: $timezone)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyBusinessHoursImplCopyWith<_$CompanyBusinessHoursImpl>
      get copyWith =>
          __$$CompanyBusinessHoursImplCopyWithImpl<_$CompanyBusinessHoursImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyBusinessHoursImplToJson(
      this,
    );
  }
}

abstract class _CompanyBusinessHours implements CompanyBusinessHours {
  factory _CompanyBusinessHours(
      {required String openingHour,
      required String closingHour,
      required String timezone}) = _$CompanyBusinessHoursImpl;

  factory _CompanyBusinessHours.fromJson(Map<String, dynamic> json) =
      _$CompanyBusinessHoursImpl.fromJson;

  @override
  String get openingHour;
  set openingHour(String value);
  @override
  String get closingHour;
  set closingHour(String value);
  @override
  String get timezone;
  set timezone(String value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyBusinessHoursImplCopyWith<_$CompanyBusinessHoursImpl>
      get copyWith => throw _privateConstructorUsedError;
}
