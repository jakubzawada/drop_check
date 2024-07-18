import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_sale_model.freezed.dart';
part 'other_sale_model.g.dart';

@freezed
class OtherSaleModel with _$OtherSaleModel {
  factory OtherSaleModel(
    String imagePath,
    String name,
    String price,
    String priceBefore,
    String discountPercent,
    String dropLink,
    String description,
  ) = _OtherSaleModel;

  factory OtherSaleModel.fromJson(Map<String, dynamic> json) =>
      _$OtherSaleModelFromJson(json);
}
