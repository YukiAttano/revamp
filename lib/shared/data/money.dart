import "package:freezed_annotation/freezed_annotation.dart";
import "package:intl/intl.dart";

part "money.freezed.dart";
part "money.g.dart";

@freezed
class Money with _$Money {

  NumberFormat get _numberFormatter => NumberFormat.simpleCurrency(name: currency.toUpperCase(), decimalDigits: 2);

  double get value => amount / 100;

  const Money._();

  const factory Money({
    required double amount,
    required String currency,
  }) = _Money;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  static const Money zero = Money(amount: 0, currency: "");

  @override
  String toString() => _numberFormatter.format(amount);//"${value.toStringAsFixed(2)} $currency";
}
