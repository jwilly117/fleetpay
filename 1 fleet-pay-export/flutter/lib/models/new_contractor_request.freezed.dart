// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_contractor_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewContractorRequest _$NewContractorRequestFromJson(Map<String, dynamic> json) {
  return _NewContractorRequest.fromJson(json);
}

/// @nodoc
mixin _$NewContractorRequest {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<String> get emails => throw _privateConstructorUsedError;
  set emails(List<String> value) => throw _privateConstructorUsedError;
  List<String> get phoneNumbers => throw _privateConstructorUsedError;
  set phoneNumbers(List<String> value) => throw _privateConstructorUsedError;
  NewUser get user => throw _privateConstructorUsedError;
  set user(NewUser value) => throw _privateConstructorUsedError;
  FundingSetting get fundingSetting => throw _privateConstructorUsedError;
  set fundingSetting(FundingSetting value) =>
      throw _privateConstructorUsedError;
  PaymentStructure get paymentStructure => throw _privateConstructorUsedError;
  set paymentStructure(PaymentStructure value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewContractorRequestCopyWith<NewContractorRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewContractorRequestCopyWith<$Res> {
  factory $NewContractorRequestCopyWith(NewContractorRequest value,
          $Res Function(NewContractorRequest) then) =
      _$NewContractorRequestCopyWithImpl<$Res, NewContractorRequest>;
  @useResult
  $Res call(
      {String name,
      List<String> emails,
      List<String> phoneNumbers,
      NewUser user,
      FundingSetting fundingSetting,
      PaymentStructure paymentStructure});

  $NewUserCopyWith<$Res> get user;
  $FundingSettingCopyWith<$Res> get fundingSetting;
  $PaymentStructureCopyWith<$Res> get paymentStructure;
}

/// @nodoc
class _$NewContractorRequestCopyWithImpl<$Res,
        $Val extends NewContractorRequest>
    implements $NewContractorRequestCopyWith<$Res> {
  _$NewContractorRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emails = null,
    Object? phoneNumbers = null,
    Object? user = null,
    Object? fundingSetting = null,
    Object? paymentStructure = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumbers: null == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewUser,
      fundingSetting: null == fundingSetting
          ? _value.fundingSetting
          : fundingSetting // ignore: cast_nullable_to_non_nullable
              as FundingSetting,
      paymentStructure: null == paymentStructure
          ? _value.paymentStructure
          : paymentStructure // ignore: cast_nullable_to_non_nullable
              as PaymentStructure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewUserCopyWith<$Res> get user {
    return $NewUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FundingSettingCopyWith<$Res> get fundingSetting {
    return $FundingSettingCopyWith<$Res>(_value.fundingSetting, (value) {
      return _then(_value.copyWith(fundingSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentStructureCopyWith<$Res> get paymentStructure {
    return $PaymentStructureCopyWith<$Res>(_value.paymentStructure, (value) {
      return _then(_value.copyWith(paymentStructure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewContractorRequestImplCopyWith<$Res>
    implements $NewContractorRequestCopyWith<$Res> {
  factory _$$NewContractorRequestImplCopyWith(_$NewContractorRequestImpl value,
          $Res Function(_$NewContractorRequestImpl) then) =
      __$$NewContractorRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> emails,
      List<String> phoneNumbers,
      NewUser user,
      FundingSetting fundingSetting,
      PaymentStructure paymentStructure});

  @override
  $NewUserCopyWith<$Res> get user;
  @override
  $FundingSettingCopyWith<$Res> get fundingSetting;
  @override
  $PaymentStructureCopyWith<$Res> get paymentStructure;
}

/// @nodoc
class __$$NewContractorRequestImplCopyWithImpl<$Res>
    extends _$NewContractorRequestCopyWithImpl<$Res, _$NewContractorRequestImpl>
    implements _$$NewContractorRequestImplCopyWith<$Res> {
  __$$NewContractorRequestImplCopyWithImpl(_$NewContractorRequestImpl _value,
      $Res Function(_$NewContractorRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emails = null,
    Object? phoneNumbers = null,
    Object? user = null,
    Object? fundingSetting = null,
    Object? paymentStructure = null,
  }) {
    return _then(_$NewContractorRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumbers: null == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewUser,
      fundingSetting: null == fundingSetting
          ? _value.fundingSetting
          : fundingSetting // ignore: cast_nullable_to_non_nullable
              as FundingSetting,
      paymentStructure: null == paymentStructure
          ? _value.paymentStructure
          : paymentStructure // ignore: cast_nullable_to_non_nullable
              as PaymentStructure,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewContractorRequestImpl implements _NewContractorRequest {
  _$NewContractorRequestImpl(
      {required this.name,
      required this.emails,
      required this.phoneNumbers,
      required this.user,
      required this.fundingSetting,
      required this.paymentStructure});

  factory _$NewContractorRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewContractorRequestImplFromJson(json);

  @override
  String name;
  @override
  List<String> emails;
  @override
  List<String> phoneNumbers;
  @override
  NewUser user;
  @override
  FundingSetting fundingSetting;
  @override
  PaymentStructure paymentStructure;

  @override
  String toString() {
    return 'NewContractorRequest(name: $name, emails: $emails, phoneNumbers: $phoneNumbers, user: $user, fundingSetting: $fundingSetting, paymentStructure: $paymentStructure)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewContractorRequestImplCopyWith<_$NewContractorRequestImpl>
      get copyWith =>
          __$$NewContractorRequestImplCopyWithImpl<_$NewContractorRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewContractorRequestImplToJson(
      this,
    );
  }
}

abstract class _NewContractorRequest implements NewContractorRequest {
  factory _NewContractorRequest(
      {required String name,
      required List<String> emails,
      required List<String> phoneNumbers,
      required NewUser user,
      required FundingSetting fundingSetting,
      required PaymentStructure paymentStructure}) = _$NewContractorRequestImpl;

  factory _NewContractorRequest.fromJson(Map<String, dynamic> json) =
      _$NewContractorRequestImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  List<String> get emails;
  set emails(List<String> value);
  @override
  List<String> get phoneNumbers;
  set phoneNumbers(List<String> value);
  @override
  NewUser get user;
  set user(NewUser value);
  @override
  FundingSetting get fundingSetting;
  set fundingSetting(FundingSetting value);
  @override
  PaymentStructure get paymentStructure;
  set paymentStructure(PaymentStructure value);
  @override
  @JsonKey(ignore: true)
  _$$NewContractorRequestImplCopyWith<_$NewContractorRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
