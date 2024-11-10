// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingInformationImpl _$$BillingInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$BillingInformationImpl(
      shopperProfileId: json['shopperProfileId'] as String? ?? "",
      bankName: json['bankName'] as String? ?? "",
      swiftCode: json['swiftCode'] as String? ?? "",
      accountNumber: json['accountNumber'] as String? ?? "",
      accountName: json['accountName'] as String? ?? "",
    );

Map<String, dynamic> _$$BillingInformationImplToJson(
        _$BillingInformationImpl instance) =>
    <String, dynamic>{
      'shopperProfileId': instance.shopperProfileId,
      'bankName': instance.bankName,
      'swiftCode': instance.swiftCode,
      'accountNumber': instance.accountNumber,
      'accountName': instance.accountName,
    };
