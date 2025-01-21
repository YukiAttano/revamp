import "package:freezed_annotation/freezed_annotation.dart";

import "../../../shared/data/money.dart";

part "product.g.dart";

@JsonSerializable()
class Product {
  final int id;
  final String title;
  final String size;
  final int likes;
  final Money costs;
  final String condition;
  final String properties;

  const Product({
    required this.id,
    this.title = "",
    this.size = "",
    this.likes = 0,
    required this.costs,
    this.condition = "",
    this.properties = "",
  });

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  Map<String, Object?> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class DoomProduct extends Product {
  final String description;

  final List<String> imageUrls;

  const DoomProduct({
    required super.id,
    super.title,
    super.size,
    super.likes,
    required super.costs,
    super.condition,
    super.properties,
    required this.description,
    required this.imageUrls,
  });

  factory DoomProduct.fromJson(Map<String, dynamic> json) => _$DoomProductFromJson(json);

  Map<String, Object?> toJson() => _$DoomProductToJson(this);

  static DoomProduct dummy = DoomProduct(
    id: 0,
    title: "Product Title",
    description: "Product Description That shouldn't be that Long",
    size: "XL",
    likes: 50,
    costs: Money(amount: 20000, currency: "EUR"),
    condition: "Well Worn",
    properties: "Property, List",
    imageUrls: [
      "https://m.media-amazon.com/images/I/71z2FWZWPrL._AC_SL1500_.jpg",
      "https://m.media-amazon.com/images/I/71EJEqX3+8L._AC_SL1500_.jpg",
      "https://m.media-amazon.com/images/I/81oAHaIG3nL._AC_SL1500_.jpg"
    ],
  );
}

@JsonSerializable()
class StoreProduct extends Product {
  final String type;
  final String imageUrl;
  final double? width;
  final double? height;

  const StoreProduct({
    required super.id,
    super.title,
    super.size,
    super.likes,
    required super.costs,
    super.condition,
    super.properties,
    this.type = "",
    this.imageUrl = "",
    this.width,
    this.height,
  });

  factory StoreProduct.fromJson(Map<String, dynamic> json) => _$StoreProductFromJson(json);

  Map<String, dynamic> toJson() => _$StoreProductToJson(this);
}
