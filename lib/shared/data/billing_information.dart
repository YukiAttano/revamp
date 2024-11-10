import "package:freezed_annotation/freezed_annotation.dart";

part "billing_information.freezed.dart";
part "billing_information.g.dart";

@freezed
class BillingInformation with _$BillingInformation {
  const factory BillingInformation({
    @Default("") String shopperProfileId,
    @Default("") String bankName,
    @Default("") String swiftCode,
    @Default("") String accountNumber,
    @Default("") String accountName,
  }) = _BillingInformation;

  static const BillingInformation dummy = BillingInformation();

  factory BillingInformation.fromJson(Map<String, dynamic> json) => _$BillingInformationFromJson(json);
}
