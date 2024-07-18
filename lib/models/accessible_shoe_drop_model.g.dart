// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accessible_shoe_drop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessibleShoeDropModel _$AccessibleShoeDropModelFromJson(
        Map<String, dynamic> json) =>
    AccessibleShoeDropModel(
      name: json['name'] as String,
      price: json['price'] as String,
      imagePath: json['imagePath'] as String,
      description: json['description'] as String,
      dropTime: json['dropTime'] as String,
      dropLink: json['dropLink'] as String,
    );

Map<String, dynamic> _$AccessibleShoeDropModelToJson(
        AccessibleShoeDropModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'imagePath': instance.imagePath,
      'description': instance.description,
      'dropTime': instance.dropTime,
      'dropLink': instance.dropLink,
    };
