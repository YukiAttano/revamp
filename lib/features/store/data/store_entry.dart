import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";

import "../../../shared/data/money.dart";
import "store_category.dart";
import "store_product.dart";

part "store_entry.g.dart";

@JsonSerializable()
class StoreEntry {
  final StoreCategory category;
  final List<StoreProduct> products;

  const StoreEntry({
    required this.category,
    this.products = const [],
  });

  factory StoreEntry.fromJson(Map<String, dynamic> json) => _$StoreEntryFromJson(json);

  Map<String, dynamic> toJson() => _$StoreEntryToJson(this);
}
