// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woman_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WomanSaleModelImpl _$$WomanSaleModelImplFromJson(Map<String, dynamic> json) =>
    _$WomanSaleModelImpl(
      json['imagePath'] as String,
      json['name'] as String,
      json['price'] as String,
      json['priceBefore'] as String,
      json['discountPercent'] as String,
      json['dropLink'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$$WomanSaleModelImplToJson(
        _$WomanSaleModelImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'discountPercent': instance.discountPercent,
      'dropLink': instance.dropLink,
      'description': instance.description,
    };
