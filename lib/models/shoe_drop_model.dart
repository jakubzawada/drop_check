import 'package:json_annotation/json_annotation.dart';

part 'shoe_drop_model.g.dart';

@JsonSerializable()
class ShoeDropModel {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final String dropTime;
  final String dropLink;

  ShoeDropModel({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.dropTime,
    required this.dropLink,
  });

  factory ShoeDropModel.fromJson(Map<String, dynamic> json) =>
      _$ShoeDropModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShoeDropModelToJson(this);
}
