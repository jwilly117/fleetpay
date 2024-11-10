// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewCompany _$NewCompanyFromJson(Map<String, dynamic> json) {
  return _NewCompany.fromJson(json);
}

/// @nodoc
mixin _$NewCompany {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  set profilePicture(String? value) => throw _privateConstructorUsedError;
  List<String>? get emails => throw _privateConstructorUsedError;
  set emails(List<String>? value) => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  set phoneNumbers(List<String>? value) => throw _privateConstructorUsedError;
  CompanyBusinessHours? get businessHours => throw _privateConstructorUsedError;
  set businessHours(CompanyBusinessHours? value) =>
      throw _privateConstructorUsedError;
  NotificationSettings? get notificationSettings =>
      throw _privateConstructorUsedError;
  set notificationSettings(NotificationSettings? value) =>
      throw _privateConstructorUsedError;
  Contact? get accountingDepartmentContact =>
      throw _privateConstructorUsedError;
  set accountingDepartmentContact(Contact? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCompanyCopyWith<NewCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCompanyCopyWith<$Res> {
  factory $NewCompanyCopyWith(
          NewCompany value, $Res Function(NewCompany) then) =
      _$NewCompanyCopyWithImpl<$Res, NewCompany>;
  @useResult
  $Res call(
      {String name,
      String? profilePicture,
      List<String>? emails,
      List<String>? phoneNumbers,
      CompanyBusinessHours? businessHours,
      NotificationSettings? notificationSettings,
      Contact? accountingDepartmentContact});

  $CompanyBusinessHoursCopyWith<$Res>? get businessHours;
  $NotificationSettingsCopyWith<$Res>? get notificationSettings;
  $ContactCopyWith<$Res>? get accountingDepartmentContact;
}

/// @nodoc
class _$NewCompanyCopyWithImpl<$Res, $Val extends NewCompany>
    implements $NewCompanyCopyWith<$Res> {
  _$NewCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? profilePicture = freezed,
    Object? emails = freezed,
    Object? phoneNumbers = freezed,
    Object? businessHours = freezed,
    Object? notificationSettings = freezed,
    Object? accountingDepartmentContact = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      businessHours: freezed == businessHours
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as CompanyBusinessHours?,
      notificationSettings: freezed == notificationSettings
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings?,
      accountingDepartmentContact: freezed == accountingDepartmentContact
          ? _value.accountingDepartmentContact
          : accountingDepartmentContact // ignore: cast_nullable_to_non_nullable
              as Contact?,
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

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get accountingDepartmentContact {
    if (_value.accountingDepartmentContact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.accountingDepartmentContact!, (value) {
      return _then(_value.copyWith(accountingDepartmentContact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewCompanyImplCopyWith<$Res>
    implements $NewCompanyCopyWith<$Res> {
  factory _$$NewCompanyImplCopyWith(
          _$NewCompanyImpl value, $Res Function(_$NewCompanyImpl) then) =
      __$$NewCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? profilePicture,
      List<String>? emails,
      List<String>? phoneNumbers,
      CompanyBusinessHours? businessHours,
      NotificationSettings? notificationSettings,
      Contact? accountingDepartmentContact});

  @override
  $CompanyBusinessHoursCopyWith<$Res>? get businessHours;
  @override
  $NotificationSettingsCopyWith<$Res>? get notificationSettings;
  @override
  $ContactCopyWith<$Res>? get accountingDepartmentContact;
}

/// @nodoc
class __$$NewCompanyImplCopyWithImpl<$Res>
    extends _$NewCompanyCopyWithImpl<$Res, _$NewCompanyImpl>
    implements _$$NewCompanyImplCopyWith<$Res> {
  __$$NewCompanyImplCopyWithImpl(
      _$NewCompanyImpl _value, $Res Function(_$NewCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? profilePicture = freezed,
    Object? emails = freezed,
    Object? phoneNumbers = freezed,
    Object? businessHours = freezed,
    Object? notificationSettings = freezed,
    Object? accountingDepartmentContact = freezed,
  }) {
    return _then(_$NewCompanyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      emails: freezed == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      businessHours: freezed == businessHours
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as CompanyBusinessHours?,
      notificationSettings: freezed == notificationSettings
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings?,
      accountingDepartmentContact: freezed == accountingDepartmentContact
          ? _value.accountingDepartmentContact
          : accountingDepartmentContact // ignore: cast_nullable_to_non_nullable
              as Contact?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewCompanyImpl implements _NewCompany {
  _$NewCompanyImpl(
      {required this.name,
      this.profilePicture,
      this.emails,
      this.phoneNumbers,
      this.businessHours,
      this.notificationSettings,
      this.accountingDepartmentContact});

  factory _$NewCompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewCompanyImplFromJson(json);

  @override
  String name;
  @override
  String? profilePicture;
  @override
  List<String>? emails;
  @override
  List<String>? phoneNumbers;
  @override
  CompanyBusinessHours? businessHours;
  @override
  NotificationSettings? notificationSettings;
  @override
  Contact? accountingDepartmentContact;

  @override
  String toString() {
    return 'NewCompany(name: $name, profilePicture: $profilePicture, emails: $emails, phoneNumbers: $phoneNumbers, businessHours: $businessHours, notificationSettings: $notificationSettings, accountingDepartmentContact: $accountingDepartmentContact)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewCompanyImplCopyWith<_$NewCompanyImpl> get copyWith =>
      __$$NewCompanyImplCopyWithImpl<_$NewCompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewCompanyImplToJson(
      this,
    );
  }
}

abstract class _NewCompany implements NewCompany {
  factory _NewCompany(
      {required String name,
      String? profilePicture,
      List<String>? emails,
      List<String>? phoneNumbers,
      CompanyBusinessHours? businessHours,
      NotificationSettings? notificationSettings,
      Contact? accountingDepartmentContact}) = _$NewCompanyImpl;

  factory _NewCompany.fromJson(Map<String, dynamic> json) =
      _$NewCompanyImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  String? get profilePicture;
  set profilePicture(String? value);
  @override
  List<String>? get emails;
  set emails(List<String>? value);
  @override
  List<String>? get phoneNumbers;
  set phoneNumbers(List<String>? value);
  @override
  CompanyBusinessHours? get businessHours;
  set businessHours(CompanyBusinessHours? value);
  @override
  NotificationSettings? get notificationSettings;
  set notificationSettings(NotificationSettings? value);
  @override
  Contact? get accountingDepartmentContact;
  set accountingDepartmentContact(Contact? value);
  @override
  @JsonKey(ignore: true)
  _$$NewCompanyImplCopyWith<_$NewCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
