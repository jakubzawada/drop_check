import 'package:drop_check/widgets/timestamp_serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accessible_shoe_drop_model.freezed.dart';
part 'accessible_shoe_drop_model.g.dart';

@freezed
class AccessibleShoeDropModel with _$AccessibleShoeDropModel {
  factory AccessibleShoeDropModel(
    String name,
    String price,
    String imagePath,
    String description,
    @TimestampSerializer() DateTime dropTime,
    String dropLink,
  ) = _AccessibleShoeDropModel;

  factory AccessibleShoeDropModel.fromJson(Map<String, dynamic> json) =>
      _$AccessibleShoeDropModelFromJson(json);
}
