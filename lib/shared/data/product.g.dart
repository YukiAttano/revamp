// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? "",
      size: json['size'] as String? ?? "",
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      costs: Money.fromJson(json['costs'] as Map<String, dynamic>),
      condition: json['condition'] as String? ?? "",
      properties: json['properties'] as String? ?? "",
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'size': instance.size,
      'likes': instance.likes,
      'costs': instance.costs,
      'condition': instance.condition,
      'properties': instance.properties,
    };

DoomProduct _$DoomProductFromJson(Map<String, dynamic> json) => DoomProduct(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? "",
      size: json['size'] as String? ?? "",
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      costs: Money.fromJson(json['costs'] as Map<String, dynamic>),
      condition: json['condition'] as String? ?? "",
      properties: json['properties'] as String? ?? "",
      description: json['description'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DoomProductToJson(DoomProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'size': instance.size,
      'likes': instance.likes,
      'costs': instance.costs,
      'condition': instance.condition,
      'properties': instance.properties,
      'description': instance.description,
      'imageUrls': instance.imageUrls,
    };
