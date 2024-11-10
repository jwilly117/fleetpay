// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_fund_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewFundRequest _$NewFundRequestFromJson(Map<String, dynamic> json) {
  return _NewFundRequest.fromJson(json);
}

/// @nodoc
mixin _$NewFundRequest {
  num get amount => throw _privateConstructorUsedError;
  set amount(num value) => throw _privateConstructorUsedError;
  String get contractorId => throw _privateConstructorUsedError;
  set contractorId(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewFundRequestCopyWith<NewFundRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewFundRequestCopyWith<$Res> {
  factory $NewFundRequestCopyWith(
          NewFundRequest value, $Res Function(NewFundRequest) then) =
      _$NewFundRequestCopyWithImpl<$Res, NewFundRequest>;
  @useResult
  $Res call({num amount, String contractorId});
}

/// @nodoc
class _$NewFundRequestCopyWithImpl<$Res, $Val extends NewFundRequest>
    implements $NewFundRequestCopyWith<$Res> {
  _$NewFundRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? contractorId = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewFundRequestImplCopyWith<$Res>
    implements $NewFundRequestCopyWith<$Res> {
  factory _$$NewFundRequestImplCopyWith(_$NewFundRequestImpl value,
          $Res Function(_$NewFundRequestImpl) then) =
      __$$NewFundRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount, String contractorId});
}

/// @nodoc
class __$$NewFundRequestImplCopyWithImpl<$Res>
    extends _$NewFundRequestCopyWithImpl<$Res, _$NewFundRequestImpl>
    implements _$$NewFundRequestImplCopyWith<$Res> {
  __$$NewFundRequestImplCopyWithImpl(
      _$NewFundRequestImpl _value, $Res Function(_$NewFundRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? contractorId = null,
  }) {
    return _then(_$NewFundRequestImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewFundRequestImpl implements _NewFundRequest {
  _$NewFundRequestImpl({required this.amount, required this.contractorId});

  factory _$NewFundRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewFundRequestImplFromJson(json);

  @override
  num amount;
  @override
  String contractorId;

  @override
  String toString() {
    return 'NewFundRequest(amount: $amount, contractorId: $contractorId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewFundRequestImplCopyWith<_$NewFundRequestImpl> get copyWith =>
      __$$NewFundRequestImplCopyWithImpl<_$NewFundRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewFundRequestImplToJson(
      this,
    );
  }
}

abstract class _NewFundRequest implements NewFundRequest {
  factory _NewFundRequest({required num amount, required String contractorId}) =
      _$NewFundRequestImpl;

  factory _NewFundRequest.fromJson(Map<String, dynamic> json) =
      _$NewFundRequestImpl.fromJson;

  @override
  num get amount;
  set amount(num value);
  @override
  String get contractorId;
  set contractorId(String value);
  @override
  @JsonKey(ignore: true)
  _$$NewFundRequestImplCopyWith<_$NewFundRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
