// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoe_drop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoeDropModelImpl _$$ShoeDropModelImplFromJson(Map<String, dynamic> json) =>
    _$ShoeDropModelImpl(
      json['name'] as String,
      json['price'] as String,
      json['imagePath'] as String,
      json['description'] as String,
      json['dropTime'] as String,
      json['dropLink'] as String,
    );

Map<String, dynamic> _$$ShoeDropModelImplToJson(_$ShoeDropModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'imagePath': instance.imagePath,
      'description': instance.description,
      'dropTime': instance.dropTime,
      'dropLink': instance.dropLink,
    };
