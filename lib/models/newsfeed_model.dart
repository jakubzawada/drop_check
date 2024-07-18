import 'package:json_annotation/json_annotation.dart';

part 'newsfeed_model.g.dart';

@JsonSerializable()
class NewsfeedModel {
  final String imagePath;
  final String dropLink;

  NewsfeedModel({
    required this.imagePath,
    required this.dropLink,
  });

  factory NewsfeedModel.fromJson(Map<String, dynamic> json) =>
      _$NewsfeedModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsfeedModelToJson(this);
}
