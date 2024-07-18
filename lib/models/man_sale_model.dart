import 'package:freezed_annotation/freezed_annotation.dart';

part 'man_sale_model.freezed.dart';
part 'man_sale_model.g.dart';

@freezed
class ManSaleModel with _$ManSaleModel {
  factory ManSaleModel(
    String imagePath,
    String name,
    String price,
    String priceBefore,
    String discountPercent,
    String dropLink,
    String description,
  ) = _ManSaleModel;

  factory ManSaleModel.fromJson(Map<String, dynamic> json) =>
      _$ManSaleModelFromJson(json);
}
