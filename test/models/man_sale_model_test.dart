import 'package:flutter_test/flutter_test.dart';
import 'package:drop_check/models/man_sale_model.dart';

void main() {
  group('ManSaleModel', () {
    test('should parse from JSON', () {
      final json = {
        'imagePath': 'path/to/image',
        'name': 'Sale',
        'price': '1200',
        'priceBefore': '1500',
        'discountPercent': '10',
        'dropLink': 'http://link.com',
        'description': 'A test sale description',
      };

      final model = ManSaleModel.fromJson(json);

      expect(model.imagePath, 'path/to/image');
      expect(model.name, 'Sale');
      expect(model.price, '1200');
      expect(model.priceBefore, '1500');
      expect(model.discountPercent, '10');
      expect(model.dropLink, 'http://link.com');
      expect(model.description, 'A test sale description');
    });

    test('should convert to JSON', () {
      final model = ManSaleModel(
        'path/to/image',
        'Sale',
        '1200',
        '1500',
        '10',
        'http://link.com',
        'A test sale description',
      );

      final json = model.toJson();

      expect(json['imagePath'], 'path/to/image');
      expect(json['name'], 'Sale');
      expect(json['price'], '1200');
      expect(json['priceBefore'], '1500');
      expect(json['discountPercent'], '10');
      expect(json['dropLink'], 'http://link.com');
      expect(json['description'], 'A test sale description');
    });
  });
}
