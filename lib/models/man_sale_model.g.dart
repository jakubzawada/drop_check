// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'man_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManSaleModelImpl _$$ManSaleModelImplFromJson(Map<String, dynamic> json) =>
    _$ManSaleModelImpl(
      json['imagePath'] as String,
      json['name'] as String,
      json['price'] as String,
      json['priceBefore'] as String,
      json['discountPercent'] as String,
      json['dropLink'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$$ManSaleModelImplToJson(_$ManSaleModelImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'discountPercent': instance.discountPercent,
      'dropLink': instance.dropLink,
      'description': instance.description,
    };
