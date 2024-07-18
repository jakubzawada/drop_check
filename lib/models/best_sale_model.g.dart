// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BestSaleModelImpl _$$BestSaleModelImplFromJson(Map<String, dynamic> json) =>
    _$BestSaleModelImpl(
      json['imagePath'] as String,
      json['name'] as String,
      json['price'] as String,
      json['priceBefore'] as String,
      json['discountPercent'] as String,
      json['dropLink'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$$BestSaleModelImplToJson(_$BestSaleModelImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'name': instance.name,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'discountPercent': instance.discountPercent,
      'dropLink': instance.dropLink,
      'description': instance.description,
    };
