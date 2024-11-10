// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<String>? get emails => throw _privateConstructorUsedError;
  set emails(List<String>? value) => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  set phoneNumbers(List<String>? value) => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  set profilePicture(String? value) => throw _privateConstructorUsedError;
  CompanyBusinessHours? get businessHours => throw _privateConstructorUsedError;
  set businessHours(CompanyBusinessHours? value) =>
      throw _privateConstructorUsedError;
  NotificationSettings? get notificationSettings =>
      throw _privateConstructorUsedError;
  set notificationSettings(NotificationSettings? value) =>
      throw _privateConstructorUsedError;
  List<Contact> get accountingDepartmentContacts =>
      throw _privateConstructorUsedError;
  set accountingDepartmentContacts(List<Contact> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<String>? emails,
      List<String>? phoneNumbers,
      String? profilePicture,
      CompanyBusinessHours? businessHours,
      NotificationSettings? notificationSettings,
      List<Contact> accountingDepartmentContacts});

  $CompanyBusinessHoursCopyWith<$Res>? get businessHours;
  $NotificationSettingsCopyWith<$Res>? get notificationSettings;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? emails = freezed,
    Object? phoneNumbers = freezed,
    Object? profilePicture = freezed,
    Object? businessHours = freezed,
    Object? notificationSettings = freezed,
    Object? accountingDepartmentContacts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      businessHours: freezed == businessHours
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as CompanyBusinessHours?,
      notificationSettings: freezed == notificationSettings
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings?,
      accountingDepartmentContacts: null == accountingDepartmentContacts
          ? _value.accountingDepartmentContacts
          : accountingDepartmentContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyBusinessHoursCopyWith<$Res>? get businessHours {
    if (_value.businessHours == null) {
      return null;
    }

    return $CompanyBusinessHoursCopyWith<$Res>(_value.businessHours!, (value) {
      return _then(_value.copyWith(businessHours: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationSettingsCopyWith<$Res>? get notificationSettings {
    if (_value.notificationSettings == null) {
      return null;
    }

    return $NotificationSettingsCopyWith<$Res>(_value.notificationSettings!,
        (value) {
      return _then(_value.copyWith(notificationSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<String>? emails,
      List<String>? phoneNumbers,
      String? profilePicture,
      CompanyBusinessHours? businessHours,
      NotificationSettings? notificationSettings,
      List<Contact> accountingDepartmentContacts});

  @override
  $CompanyBusinessHoursCopyWith<$Res>? get businessHours;
  @override
  $NotificationSettingsCopyWith<$Res>? get notificationSettings;
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? emails = freezed,
    Object? phoneNumbers = freezed,
    Object? profilePicture = freezed,
    Object? businessHours = freezed,
    Object? notificationSettings = freezed,
    Object? accountingDepartmentContacts = null,
  }) {
    return _then(_$CompanyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      businessHours: freezed == businessHours
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as CompanyBusinessHours?,
      notificationSettings: freezed == notificationSettings
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings?,
      accountingDepartmentContacts: null == accountingDepartmentContacts
          ? _value.accountingDepartmentContacts
          : accountingDepartmentContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  _$CompanyImpl(
      {required this.id,
      required this.name,
      this.emails,
      this.phoneNumbers,
      this.profilePicture,
      this.businessHours,
      this.notificationSettings,
      required this.accountingDepartmentContacts});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  String id;
  @override
  String name;
  @override
  List<String>? emails;
  @override
  List<String>? phoneNumbers;
  @override
  String? profilePicture;
  @override
  CompanyBusinessHours? businessHours;
  @override
  NotificationSettings? notificationSettings;
  @override
  List<Contact> accountingDepartmentContacts;

  @override
  String toString() {
    return 'Company(id: $id, name: $name, emails: $emails, phoneNumbers: $phoneNumbers, profilePicture: $profilePicture, businessHours: $businessHours, notificationSettings: $notificationSettings, accountingDepartmentContacts: $accountingDepartmentContacts)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  factory _Company(
      {required String id,
      required String name,
      List<String>? emails,
      List<String>? phoneNumbers,
      String? profilePicture,
      CompanyBusinessHours? businessHours,
      NotificationSettings? notificationSettings,
      required List<Contact> accountingDepartmentContacts}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  List<String>? get emails;
  set emails(List<String>? value);
  @override
  List<String>? get phoneNumbers;
  set phoneNumbers(List<String>? value);
  @override
  String? get profilePicture;
  set profilePicture(String? value);
  @override
  CompanyBusinessHours? get businessHours;
  set businessHours(CompanyBusinessHours? value);
  @override
  NotificationSettings? get notificationSettings;
  set notificationSettings(NotificationSettings? value);
  @override
  List<Contact> get accountingDepartmentContacts;
  set accountingDepartmentContacts(List<Contact> value);
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
