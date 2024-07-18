// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherSaleModel _$OtherSaleModelFromJson(Map<String, dynamic> json) =>
    OtherSaleModel(
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      priceBefore: json['priceBefore'] as String,
      discountPercent: json['discountPercent'] as String,
      dropLink: json['dropLink'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$OtherSaleModelToJson(OtherSaleModel instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'discountPercent': instance.discountPercent,
      'dropLink': instance.dropLink,
      'description': instance.description,
    };
