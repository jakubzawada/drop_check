import 'package:flutter_test/flutter_test.dart';
import 'package:drop_check/models/other_sale_model.dart';

void main() {
  group('OtherSaleModel', () {
    test('should parse from JSON', () {
      final json = {
        'imagePath': 'path/to/image',
        'name': 'Product',
        'price': '1200',
        'priceBefore': '1500',
        'discountPercent': '10',
        'dropLink': 'http://link.com',
        'description': 'Test Description',
      };

      final model = OtherSaleModel.fromJson(json);

      expect(model.imagePath, 'path/to/image');
      expect(model.name, 'Product');
      expect(model.price, '1200');
      expect(model.priceBefore, '1500');
      expect(model.discountPercent, '10');
      expect(model.dropLink, 'http://link.com');
      expect(model.description, 'Test Description');
    });

    test('should convert to JSON', () {
      final model = OtherSaleModel(
        'path/to/image',
        'Product',
        '1200',
        '1500',
        '10',
        'http://link.com',
        'Test Description',
      );

      final json = model.toJson();

      expect(json['imagePath'], 'path/to/image');
      expect(json['name'], 'Product');
      expect(json['price'], '1200');
      expect(json['priceBefore'], '1500');
      expect(json['discountPercent'], '10');
      expect(json['dropLink'], 'http://link.com');
      expect(json['description'], 'Test Description');
    });
  });
}
