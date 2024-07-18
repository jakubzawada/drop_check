import 'package:json_annotation/json_annotation.dart';

part 'woman_sale_model.g.dart';

@JsonSerializable()
class WomanSaleModel {
  final String imagePath;
  final String name;
  final String price;
  final String priceBefore;
  final String discountPercent;
  final String dropLink;
  final String description;

  WomanSaleModel({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.priceBefore,
    required this.discountPercent,
    required this.dropLink,
    required this.description,
  });

  factory WomanSaleModel.fromJson(Map<String, dynamic> json) =>
      _$WomanSaleModelFromJson(json);

  Map<String, dynamic> toJson() => _$WomanSaleModelToJson(this);
}
