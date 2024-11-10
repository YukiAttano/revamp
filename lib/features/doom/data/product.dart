import "package:freezed_annotation/freezed_annotation.dart";

import "../../../shared/data/money.dart";

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required int likes,
    required Money costs,
    required String condition,
    required String properties,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  static Product dummy = Product(
      id: 0,
      title: "Yogapants",
      description: "Headline description",
      likes: 50,
      costs: Money(amount: 20, currency: "EUR"),
      condition: "Like New",
      properties: "Medium, Winter, Pink"
  );
}
