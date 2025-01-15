// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreCategoryImpl _$$StoreCategoryImplFromJson(Map<String, dynamic> json) =>
    _$StoreCategoryImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? "",
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoreCategoryImplToJson(_$StoreCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'width': instance.width,
      'height': instance.height,
    };
