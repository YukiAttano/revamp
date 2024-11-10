// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['address1'] as String? ?? "",
      street2: json['address2'] as String? ?? "",
      city: json['city'] as String? ?? "",
      zip: json['zip'] as String? ?? "",
      state: json['state'] as String? ?? "",
      country: json['country'] as String? ?? "",
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'address1': instance.street,
      'address2': instance.street2,
      'city': instance.city,
      'zip': instance.zip,
      'state': instance.state,
      'country': instance.country,
    };
