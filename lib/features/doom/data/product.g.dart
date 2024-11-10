// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      likes: (json['likes'] as num).toInt(),
      costs: Money.fromJson(json['costs'] as Map<String, dynamic>),
      condition: json['condition'] as String,
      properties: json['properties'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'likes': instance.likes,
      'costs': instance.costs,
      'condition': instance.condition,
      'properties': instance.properties,
    };
