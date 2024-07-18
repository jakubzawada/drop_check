class AccessibleShoeDropModel {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final String dropTime;
  final String dropLink;

  AccessibleShoeDropModel({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.dropTime,
    required this.dropLink,
  });

  AccessibleShoeDropModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        price = json['price'],
        imagePath = json['imagePath'],
        description = json['description'],
        dropTime = json['dropTime'],
        dropLink = json['dropLink'];
}
