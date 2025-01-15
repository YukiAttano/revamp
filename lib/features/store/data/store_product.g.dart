// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreProduct _$StoreProductFromJson(Map<String, dynamic> json) => StoreProduct(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      costs: Money.fromJson(json['costs'] as Map<String, dynamic>),
      condition: json['condition'] as String? ?? "",
      properties: json['properties'] as String? ?? "",
      imageUrl: json['imageUrl'] as String? ?? "",
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StoreProductToJson(StoreProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'likes': instance.likes,
      'costs': instance.costs,
      'condition': instance.condition,
      'properties': instance.properties,
      'imageUrl': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
    };
