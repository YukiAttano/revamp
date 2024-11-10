// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillingInformation _$BillingInformationFromJson(Map<String, dynamic> json) {
  return _BillingInformation.fromJson(json);
}

/// @nodoc
mixin _$BillingInformation {
  String get shopperProfileId => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get swiftCode => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;

  /// Serializes this BillingInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingInformationCopyWith<BillingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingInformationCopyWith<$Res> {
  factory $BillingInformationCopyWith(
          BillingInformation value, $Res Function(BillingInformation) then) =
      _$BillingInformationCopyWithImpl<$Res, BillingInformation>;
  @useResult
  $Res call(
      {String shopperProfileId,
      String bankName,
      String swiftCode,
      String accountNumber,
      String accountName});
}

/// @nodoc
class _$BillingInformationCopyWithImpl<$Res, $Val extends BillingInformation>
    implements $BillingInformationCopyWith<$Res> {
  _$BillingInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopperProfileId = null,
    Object? bankName = null,
    Object? swiftCode = null,
    Object? accountNumber = null,
    Object? accountName = null,
  }) {
    return _then(_value.copyWith(
      shopperProfileId: null == shopperProfileId
          ? _value.shopperProfileId
          : shopperProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      swiftCode: null == swiftCode
          ? _value.swiftCode
          : swiftCode // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingInformationImplCopyWith<$Res>
    implements $BillingInformationCopyWith<$Res> {
  factory _$$BillingInformationImplCopyWith(_$BillingInformationImpl value,
          $Res Function(_$BillingInformationImpl) then) =
      __$$BillingInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopperProfileId,
      String bankName,
      String swiftCode,
      String accountNumber,
      String accountName});
}

/// @nodoc
class __$$BillingInformationImplCopyWithImpl<$Res>
    extends _$BillingInformationCopyWithImpl<$Res, _$BillingInformationImpl>
    implements _$$BillingInformationImplCopyWith<$Res> {
  __$$BillingInformationImplCopyWithImpl(_$BillingInformationImpl _value,
      $Res Function(_$BillingInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopperProfileId = null,
    Object? bankName = null,
    Object? swiftCode = null,
    Object? accountNumber = null,
    Object? accountName = null,
  }) {
    return _then(_$BillingInformationImpl(
      shopperProfileId: null == shopperProfileId
          ? _value.shopperProfileId
          : shopperProfileId // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      swiftCode: null == swiftCode
          ? _value.swiftCode
          : swiftCode // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingInformationImpl implements _BillingInformation {
  const _$BillingInformationImpl(
      {this.shopperProfileId = "",
      this.bankName = "",
      this.swiftCode = "",
      this.accountNumber = "",
      this.accountName = ""});

  factory _$BillingInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingInformationImplFromJson(json);

  @override
  @JsonKey()
  final String shopperProfileId;
  @override
  @JsonKey()
  final String bankName;
  @override
  @JsonKey()
  final String swiftCode;
  @override
  @JsonKey()
  final String accountNumber;
  @override
  @JsonKey()
  final String accountName;

  @override
  String toString() {
    return 'BillingInformation(shopperProfileId: $shopperProfileId, bankName: $bankName, swiftCode: $swiftCode, accountNumber: $accountNumber, accountName: $accountName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingInformationImpl &&
            (identical(other.shopperProfileId, shopperProfileId) ||
                other.shopperProfileId == shopperProfileId) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.swiftCode, swiftCode) ||
                other.swiftCode == swiftCode) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shopperProfileId, bankName,
      swiftCode, accountNumber, accountName);

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingInformationImplCopyWith<_$BillingInformationImpl> get copyWith =>
      __$$BillingInformationImplCopyWithImpl<_$BillingInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingInformationImplToJson(
      this,
    );
  }
}

abstract class _BillingInformation implements BillingInformation {
  const factory _BillingInformation(
      {final String shopperProfileId,
      final String bankName,
      final String swiftCode,
      final String accountNumber,
      final String accountName}) = _$BillingInformationImpl;

  factory _BillingInformation.fromJson(Map<String, dynamic> json) =
      _$BillingInformationImpl.fromJson;

  @override
  String get shopperProfileId;
  @override
  String get bankName;
  @override
  String get swiftCode;
  @override
  String get accountNumber;
  @override
  String get accountName;

  /// Create a copy of BillingInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingInformationImplCopyWith<_$BillingInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
