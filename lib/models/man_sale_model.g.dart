// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'man_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManSaleModel _$ManSaleModelFromJson(Map<String, dynamic> json) => ManSaleModel(
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      priceBefore: json['priceBefore'] as String,
      discountPercent: json['discountPercent'] as String,
      dropLink: json['dropLink'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ManSaleModelToJson(ManSaleModel instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'discountPercent': instance.discountPercent,
      'dropLink': instance.dropLink,
      'description': instance.description,
    };
