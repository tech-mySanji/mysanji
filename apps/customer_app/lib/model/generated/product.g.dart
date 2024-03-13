// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imgUrl: json['imgUrl'] as String,
      price: (json['price'] as num).toDouble(),
      subCategoryId: json['subCategoryId'] as String,
      categoryId: json['categoryId'] as String,
      vendorId: json['vendorId'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imgUrl': instance.imgUrl,
      'price': instance.price,
      'subCategoryId': instance.subCategoryId,
      'categoryId': instance.categoryId,
      'vendorId': instance.vendorId,
    };
