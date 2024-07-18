import 'package:flutter_test/flutter_test.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';

void main() {
  group('AccessibleShoeDropModel', () {
    test('should parse from JSON', () {
      final json = {
        'name': 'Jordan 1 UNC',
        'price': '1200',
        'imagePath': 'path/to/image',
        'description': 'A test shoe description',
        'dropTime': '16:00',
        'dropLink': 'http://link.com',
      };

      final model = AccessibleShoeDropModel.fromJson(json);

      expect(model.name, 'Jordan 1 UNC');
      expect(model.price, '1200');
      expect(model.imagePath, 'path/to/image');
      expect(model.description, 'A test shoe description');
      expect(model.dropTime, '16:00');
      expect(model.dropLink, 'http://link.com');
    });

    test('should convert to JSON', () {
      final model = AccessibleShoeDropModel(
        'Jordan 1',
        '1200',
        'path/to/image',
        'A test shoe description',
        '16:00',
        'http://link.com',
      );

      final json = model.toJson();

      expect(json['name'], 'Jordan 1');
      expect(json['price'], '1200');
      expect(json['imagePath'], 'path/to/image');
      expect(json['description'], 'A test shoe description');
      expect(json['dropTime'], '16:00');
      expect(json['dropLink'], 'http://link.com');
    });
  });
}
