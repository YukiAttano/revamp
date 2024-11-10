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
    required List<String> imageUrls,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  static Product dummy = Product(
      id: 0,
      title: "Product Title",
      description: "Product Description That shouldn't be that Long",
      likes: 50,
      costs: Money(amount: 20000, currency: "EUR"),
      condition: "Product Condition",
      properties: "Property, List",
      imageUrls: ["https://m.media-amazon.com/images/I/71z2FWZWPrL._AC_SL1500_.jpg", "https://m.media-amazon.com/images/I/71EJEqX3+8L._AC_SL1500_.jpg", "https://m.media-amazon.com/images/I/81oAHaIG3nL._AC_SL1500_.jpg"],
  );
}
