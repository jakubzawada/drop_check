import 'package:drop_check/widgets/timestamp_serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shoe_drop_model.freezed.dart';
part 'shoe_drop_model.g.dart';

@freezed
class ShoeDropModel with _$ShoeDropModel {
  factory ShoeDropModel(
    String name,
    String price,
    String imagePath,
    String description,
    @TimestampSerializer() DateTime dropTime,
    String dropLink,
  ) = _ShoeDropModel;

  factory ShoeDropModel.fromJson(Map<String, dynamic> json) =>
      _$ShoeDropModelFromJson(json);
}
