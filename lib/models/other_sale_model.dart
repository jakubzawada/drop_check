import 'package:json_annotation/json_annotation.dart';

part 'other_sale_model.g.dart';

@JsonSerializable()
class OtherSaleModel {
  final String imagePath;
  final String name;
  final String price;
  final String priceBefore;
  final String discountPercent;
  final String dropLink;
  final String description;

  OtherSaleModel({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.priceBefore,
    required this.discountPercent,
    required this.dropLink,
    required this.description,
  });

  factory OtherSaleModel.fromJson(Map<String, dynamic> json) =>
      _$OtherSaleModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtherSaleModelToJson(this);
}
