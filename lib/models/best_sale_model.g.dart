// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSaleModel _$BestSaleModelFromJson(Map<String, dynamic> json) =>
    BestSaleModel(
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      priceBefore: json['priceBefore'] as String,
      discountPercent: json['discountPercent'] as String,
      dropLink: json['dropLink'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$BestSaleModelToJson(BestSaleModel instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'discountPercent': instance.discountPercent,
      'dropLink': instance.dropLink,
      'description': instance.description,
    };
