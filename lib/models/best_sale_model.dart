class BestSaleModel {
  final String imagePath;
  final String name;
  final String price;
  final String priceBefore;
  final String discountPercent;
  final String dropLink;
  final String description;

  BestSaleModel({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.priceBefore,
    required this.discountPercent,
    required this.dropLink,
    required this.description,
  });

  BestSaleModel.fromJson(Map<String, dynamic> json)
      : imagePath = json['imagePath'],
        name = json['name'],
        price = json['price'],
        priceBefore = json['priceBefore'],
        discountPercent = json['discountPercent'],
        dropLink = json['dropLink'],
        description = json['description'];
}
