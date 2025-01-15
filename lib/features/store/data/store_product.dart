import "package:flutter/material.dart";
import "package:json_annotation/json_annotation.dart";

import "../../../shared/data/money.dart";

part "store_product.g.dart";

@JsonSerializable()
class StoreProduct {
  final int id;
  final String title;
  final int likes;
  final Money costs;
  final String condition;
  final String properties;
  final String imageUrl;
  final double? width;
  final double? height;

  const StoreProduct({
    required this.id,
    required this.title,
    this.likes = 0,
    required this.costs,
    this.condition = "",
    this.properties = "",
    this.imageUrl = "",
    this.width,
    this.height,
  });

  factory StoreProduct.fromJson(Map<String, dynamic> json) => _$StoreProductFromJson(json);

  Map<String, dynamic> toJson() => _$StoreProductToJson(this);
}
