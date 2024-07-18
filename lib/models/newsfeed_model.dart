class NewsfeedModel {
  final String imagePath;
  final String dropLink;

  NewsfeedModel({
    required this.imagePath,
    required this.dropLink,
  });

  NewsfeedModel.fromJson(Map<String, dynamic> json)
      : imagePath = json['imagePath'],
        dropLink = json['dropLink'];
}
