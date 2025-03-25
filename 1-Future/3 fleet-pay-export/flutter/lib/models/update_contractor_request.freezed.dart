// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_contractor_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateContractorRequest _$UpdateContractorRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateContractorRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateContractorRequest {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  Contact get primaryContact => throw _privateConstructorUsedError;
  set primaryContact(Contact value) => throw _privateConstructorUsedError;
  FundingSetting? get fundingSetting => throw _privateConstructorUsedError;
  set fundingSetting(FundingSetting? value) =>
      throw _privateConstructorUsedError;
  PaymentStructure? get paymentStructure => throw _privateConstructorUsedError;
  set paymentStructure(PaymentStructure? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateContractorRequestCopyWith<UpdateContractorRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateContractorRequestCopyWith<$Res> {
  factory $UpdateContractorRequestCopyWith(UpdateContractorRequest value,
          $Res Function(UpdateContractorRequest) then) =
      _$UpdateContractorRequestCopyWithImpl<$Res, UpdateContractorRequest>;
  @useResult
  $Res call(
      {String name,
      Contact primaryContact,
      FundingSetting? fundingSetting,
      PaymentStructure? paymentStructure});

  $ContactCopyWith<$Res> get primaryContact;
  $FundingSettingCopyWith<$Res>? get fundingSetting;
  $PaymentStructureCopyWith<$Res>? get paymentStructure;
}

/// @nodoc
class _$UpdateContractorRequestCopyWithImpl<$Res,
        $Val extends UpdateContractorRequest>
    implements $UpdateContractorRequestCopyWith<$Res> {
  _$UpdateContractorRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? primaryContact = null,
    Object? fundingSetting = freezed,
    Object? paymentStructure = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as Contact,
      fundingSetting: freezed == fundingSetting
          ? _value.fundingSetting
          : fundingSetting // ignore: cast_nullable_to_non_nullable
              as FundingSetting?,
      paymentStructure: freezed == paymentStructure
          ? _value.paymentStructure
          : paymentStructure // ignore: cast_nullable_to_non_nullable
              as PaymentStructure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get primaryContact {
    return $ContactCopyWith<$Res>(_value.primaryContact, (value) {
      return _then(_value.copyWith(primaryContact: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FundingSettingCopyWith<$Res>? get fundingSetting {
    if (_value.fundingSetting == null) {
      return null;
    }

    return $FundingSettingCopyWith<$Res>(_value.fundingSetting!, (value) {
      return _then(_value.copyWith(fundingSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentStructureCopyWith<$Res>? get paymentStructure {
    if (_value.paymentStructure == null) {
      return null;
    }

    return $PaymentStructureCopyWith<$Res>(_value.paymentStructure!, (value) {
      return _then(_value.copyWith(paymentStructure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateContractorRequestImplCopyWith<$Res>
    implements $UpdateContractorRequestCopyWith<$Res> {
  factory _$$UpdateContractorRequestImplCopyWith(
          _$UpdateContractorRequestImpl value,
          $Res Function(_$UpdateContractorRequestImpl) then) =
      __$$UpdateContractorRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Contact primaryContact,
      FundingSetting? fundingSetting,
      PaymentStructure? paymentStructure});

  @override
  $ContactCopyWith<$Res> get primaryContact;
  @override
  $FundingSettingCopyWith<$Res>? get fundingSetting;
  @override
  $PaymentStructureCopyWith<$Res>? get paymentStructure;
}

/// @nodoc
class __$$UpdateContractorRequestImplCopyWithImpl<$Res>
    extends _$UpdateContractorRequestCopyWithImpl<$Res,
        _$UpdateContractorRequestImpl>
    implements _$$UpdateContractorRequestImplCopyWith<$Res> {
  __$$UpdateContractorRequestImplCopyWithImpl(
      _$UpdateContractorRequestImpl _value,
      $Res Function(_$UpdateContractorRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? primaryContact = null,
    Object? fundingSetting = freezed,
    Object? paymentStructure = freezed,
  }) {
    return _then(_$UpdateContractorRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as Contact,
      fundingSetting: freezed == fundingSetting
          ? _value.fundingSetting
          : fundingSetting // ignore: cast_nullable_to_non_nullable
              as FundingSetting?,
      paymentStructure: freezed == paymentStructure
          ? _value.paymentStructure
          : paymentStructure // ignore: cast_nullable_to_non_nullable
              as PaymentStructure?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateContractorRequestImpl implements _UpdateContractorRequest {
  _$UpdateContractorRequestImpl(
      {required this.name,
      required this.primaryContact,
      this.fundingSetting,
      this.paymentStructure});

  factory _$UpdateContractorRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateContractorRequestImplFromJson(json);

  @override
  String name;
  @override
  Contact primaryContact;
  @override
  FundingSetting? fundingSetting;
  @override
  PaymentStructure? paymentStructure;

  @override
  String toString() {
    return 'UpdateContractorRequest(name: $name, primaryContact: $primaryContact, fundingSetting: $fundingSetting, paymentStructure: $paymentStructure)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateContractorRequestImplCopyWith<_$UpdateContractorRequestImpl>
      get copyWith => __$$UpdateContractorRequestImplCopyWithImpl<
          _$UpdateContractorRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateContractorRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateContractorRequest implements UpdateContractorRequest {
  factory _UpdateContractorRequest(
      {required String name,
      required Contact primaryContact,
      FundingSetting? fundingSetting,
      PaymentStructure? paymentStructure}) = _$UpdateContractorRequestImpl;

  factory _UpdateContractorRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateContractorRequestImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  Contact get primaryContact;
  set primaryContact(Contact value);
  @override
  FundingSetting? get fundingSetting;
  set fundingSetting(FundingSetting? value);
  @override
  PaymentStructure? get paymentStructure;
  set paymentStructure(PaymentStructure? value);
  @override
  @JsonKey(ignore: true)
  _$$UpdateContractorRequestImplCopyWith<_$UpdateContractorRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
