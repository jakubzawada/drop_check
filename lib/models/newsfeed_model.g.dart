// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsfeed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsfeedModel _$NewsfeedModelFromJson(Map<String, dynamic> json) =>
    NewsfeedModel(
      imagePath: json['imagePath'] as String,
      dropLink: json['dropLink'] as String,
    );

Map<String, dynamic> _$NewsfeedModelToJson(NewsfeedModel instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'dropLink': instance.dropLink,
    };
