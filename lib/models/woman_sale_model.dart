import 'package:freezed_annotation/freezed_annotation.dart';

part 'woman_sale_model.freezed.dart';
part 'woman_sale_model.g.dart';

@freezed
class WomanSaleModel with _$WomanSaleModel {
  factory WomanSaleModel(
    String imagePath,
    String name,
    String price,
    String priceBefore,
    String discountPercent,
    String dropLink,
    String description,
  ) = _WomanSaleModel;

  factory WomanSaleModel.fromJson(Map<String, dynamic> json) =>
      _$WomanSaleModelFromJson(json);
}
