import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsfeed_model.freezed.dart';
part 'newsfeed_model.g.dart';

@freezed
class NewsfeedModel with _$NewsfeedModel {
  factory NewsfeedModel(
    String imagePath,
    String dropLink,
  ) = _NewsfeedModel;

  factory NewsfeedModel.fromJson(Map<String, dynamic> json) =>
      _$NewsfeedModelFromJson(json);
}
