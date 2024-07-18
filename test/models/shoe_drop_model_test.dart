import 'package:flutter_test/flutter_test.dart';
import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  group('ShoeDropModel', () {
    final DateTime now = DateTime.now();
    final Timestamp nowTimestamp = Timestamp.fromDate(now);

    test('should parse from JSON', () {
      final json = {
        'name': 'Shoe',
        'price': '1200',
        'imagePath': 'path/to/image',
        'description': 'Test Description',
        'dropTime': nowTimestamp,
        'dropLink': 'http://link.com',
      };

      final model = ShoeDropModel.fromJson(json);

      expect(model.name, 'Shoe');
      expect(model.price, '1200');
      expect(model.imagePath, 'path/to/image');
      expect(model.description, 'Test Description');
      expect(model.dropTime, now);
      expect(model.dropLink, 'http://link.com');
    });

    test('should convert to JSON', () {
      final model = ShoeDropModel(
        'Shoe',
        '1200',
        'path/to/image',
        'Test Description',
        now,
        'http://link.com',
      );

      final json = model.toJson();

      final dropTime = json['dropTime'] as Timestamp;

      expect(json['name'], 'Shoe');
      expect(json['price'], '1200');
      expect(json['imagePath'], 'path/to/image');
      expect(json['description'], 'Test Description');
      expect(dropTime.toDate(), now);
      expect(json['dropLink'], 'http://link.com');
    });
  });
}
