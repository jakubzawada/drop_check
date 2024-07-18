import 'package:flutter_test/flutter_test.dart';
import 'package:drop_check/models/shoe_drop_model.dart';

void main() {
  group('ShoeDropModel', () {
    test('should parse from JSON', () {
      final json = {
        'name': 'Shoe',
        'price': '1200',
        'imagePath': 'path/to/image',
        'description': 'Test Description',
        'dropTime': '18:30',
        'dropLink': 'http://link.com',
      };

      final model = ShoeDropModel.fromJson(json);

      expect(model.name, 'Shoe');
      expect(model.price, '1200');
      expect(model.imagePath, 'path/to/image');
      expect(model.description, 'Test Description');
      expect(model.dropTime, '18:30');
      expect(model.dropLink, 'http://link.com');
    });

    test('should convert to JSON', () {
      final model = ShoeDropModel(
        'Shoe',
        '1200',
        'path/to/image',
        'Test Description',
        '18:30',
        'http://link.com',
      );

      final json = model.toJson();

      expect(json['name'], 'Shoe');
      expect(json['price'], '1200');
      expect(json['imagePath'], 'path/to/image');
      expect(json['description'], 'Test Description');
      expect(json['dropTime'], '18:30');
      expect(json['dropLink'], 'http://link.com');
    });
  });
}
