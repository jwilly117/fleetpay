// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationSettings _$NotificationSettingsFromJson(Map<String, dynamic> json) {
  return _NotificationSettings.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettings {
  bool get emailNotifications => throw _privateConstructorUsedError;
  set emailNotifications(bool value) => throw _privateConstructorUsedError;
  List<String> get emails => throw _privateConstructorUsedError;
  set emails(List<String> value) => throw _privateConstructorUsedError;
  bool get smsNotifications => throw _privateConstructorUsedError;
  set smsNotifications(bool value) => throw _privateConstructorUsedError;
  List<String> get phoneNumbers => throw _privateConstructorUsedError;
  set phoneNumbers(List<String> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(NotificationSettings value,
          $Res Function(NotificationSettings) then) =
      _$NotificationSettingsCopyWithImpl<$Res, NotificationSettings>;
  @useResult
  $Res call(
      {bool emailNotifications,
      List<String> emails,
      bool smsNotifications,
      List<String> phoneNumbers});
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res,
        $Val extends NotificationSettings>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailNotifications = null,
    Object? emails = null,
    Object? smsNotifications = null,
    Object? phoneNumbers = null,
  }) {
    return _then(_value.copyWith(
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      smsNotifications: null == smsNotifications
          ? _value.smsNotifications
          : smsNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumbers: null == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingsImplCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$$NotificationSettingsImplCopyWith(_$NotificationSettingsImpl value,
          $Res Function(_$NotificationSettingsImpl) then) =
      __$$NotificationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool emailNotifications,
      List<String> emails,
      bool smsNotifications,
      List<String> phoneNumbers});
}

/// @nodoc
class __$$NotificationSettingsImplCopyWithImpl<$Res>
    extends _$NotificationSettingsCopyWithImpl<$Res, _$NotificationSettingsImpl>
    implements _$$NotificationSettingsImplCopyWith<$Res> {
  __$$NotificationSettingsImplCopyWithImpl(_$NotificationSettingsImpl _value,
      $Res Function(_$NotificationSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailNotifications = null,
    Object? emails = null,
    Object? smsNotifications = null,
    Object? phoneNumbers = null,
  }) {
    return _then(_$NotificationSettingsImpl(
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      smsNotifications: null == smsNotifications
          ? _value.smsNotifications
          : smsNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumbers: null == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingsImpl implements _NotificationSettings {
  _$NotificationSettingsImpl(
      {required this.emailNotifications,
      required this.emails,
      required this.smsNotifications,
      required this.phoneNumbers});

  factory _$NotificationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingsImplFromJson(json);

  @override
  bool emailNotifications;
  @override
  List<String> emails;
  @override
  bool smsNotifications;
  @override
  List<String> phoneNumbers;

  @override
  String toString() {
    return 'NotificationSettings(emailNotifications: $emailNotifications, emails: $emails, smsNotifications: $smsNotifications, phoneNumbers: $phoneNumbers)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith =>
          __$$NotificationSettingsImplCopyWithImpl<_$NotificationSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingsImplToJson(
      this,
    );
  }
}

abstract class _NotificationSettings implements NotificationSettings {
  factory _NotificationSettings(
      {required bool emailNotifications,
      required List<String> emails,
      required bool smsNotifications,
      required List<String> phoneNumbers}) = _$NotificationSettingsImpl;

  factory _NotificationSettings.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingsImpl.fromJson;

  @override
  bool get emailNotifications;
  set emailNotifications(bool value);
  @override
  List<String> get emails;
  set emails(List<String> value);
  @override
  bool get smsNotifications;
  set smsNotifications(bool value);
  @override
  List<String> get phoneNumbers;
  set phoneNumbers(List<String> value);
  @override
  @JsonKey(ignore: true)
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
