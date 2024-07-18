import 'package:json_annotation/json_annotation.dart';

part 'accessible_shoe_drop_model.g.dart';

@JsonSerializable()
class AccessibleShoeDropModel {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final String dropTime;
  final String dropLink;

  AccessibleShoeDropModel({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.dropTime,
    required this.dropLink,
  });

  factory AccessibleShoeDropModel.fromJson(Map<String, dynamic> json) =>
      _$AccessibleShoeDropModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccessibleShoeDropModelToJson(this);
}
