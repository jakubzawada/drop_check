import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_sale_model.freezed.dart';
part 'best_sale_model.g.dart';

@freezed
class BestSaleModel with _$BestSaleModel {
  factory BestSaleModel(
    String imagePath,
    String name,
    String price,
    String priceBefore,
    String discountPercent,
    String dropLink,
    String description,
  ) = _BestSaleModel;

  factory BestSaleModel.fromJson(Map<String, dynamic> json) =>
      _$BestSaleModelFromJson(json);
}
