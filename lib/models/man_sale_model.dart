import 'package:json_annotation/json_annotation.dart';

part 'man_sale_model.g.dart';

@JsonSerializable()
class ManSaleModel {
  final String imagePath;
  final String name;
  final String price;
  final String priceBefore;
  final String discountPercent;
  final String dropLink;
  final String description;

  ManSaleModel({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.priceBefore,
    required this.discountPercent,
    required this.dropLink,
    required this.description,
  });

  factory ManSaleModel.fromJson(Map<String, dynamic> json) =>
      _$ManSaleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ManSaleModelToJson(this);
}
