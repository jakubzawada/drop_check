import 'package:json_annotation/json_annotation.dart';

part 'best_sale_model.g.dart';

@JsonSerializable()
class BestSaleModel {
  final String imagePath;
  final String name;
  final String price;
  final String priceBefore;
  final String discountPercent;
  final String dropLink;
  final String description;

  BestSaleModel({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.priceBefore,
    required this.discountPercent,
    required this.dropLink,
    required this.description,
  });

  factory BestSaleModel.fromJson(Map<String, dynamic> json) =>
      _$BestSaleModelFromJson(json);

  Map<String, dynamic> toJson() => _$BestSaleModelToJson(this);
}
