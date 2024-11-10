// ignore_for_file: invalid_annotation_target .

import "package:freezed_annotation/freezed_annotation.dart";

part "address.freezed.dart";
part "address.g.dart";


@freezed
class Address with _$Address {

  const Address._();

  const factory Address({
    @JsonKey(name: "address1")@Default("") String street,
    @JsonKey(name: "address2")@Default("") String street2,
    @Default("") String city,
    @Default("") String zip,
    @Default("") String state,
    @Default("") String country,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  static const Address dummy = Address(
    street: "An der alten Ziegelei",
    street2: "",
    city: "Münster",
    country: "Germany",
    state: "NRW",
    zip: "",
  );

  static const Address empty = Address();

  String get fullStreet {
    String s = "";
    String trim = street.trim();
    if (trim.isNotEmpty) s = "$trim ";
    trim = street2.trim();
    if (trim.isNotEmpty) s += trim;

    return s;
  }

}
