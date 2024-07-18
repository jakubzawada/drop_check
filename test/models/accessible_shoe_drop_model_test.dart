import 'package:flutter_test/flutter_test.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  group('AccessibleShoeDropModel', () {
    final DateTime now = DateTime.now();
    final Timestamp nowTimestamp = Timestamp.fromDate(now);

    test('should parse from JSON', () {
      final json = {
        'name': 'Jordan 1 UNC',
        'price': '1200',
        'imagePath': 'path/to/image',
        'description': 'A test shoe description',
        'dropTime': nowTimestamp,
        'dropLink': 'http://link.com',
      };

      final model = AccessibleShoeDropModel.fromJson(json);

      expect(model.name, 'Jordan 1 UNC');
      expect(model.price, '1200');
      expect(model.imagePath, 'path/to/image');
      expect(model.description, 'A test shoe description');
      expect(model.dropTime, now);
      expect(model.dropLink, 'http://link.com');
    });

    test('should convert to JSON', () {
      final model = AccessibleShoeDropModel(
        'Jordan 1',
        '1200',
        'path/to/image',
        'A test shoe description',
        now,
        'http://link.com',
      );

      final json = model.toJson();

      final dropTime = json['dropTime'] as Timestamp;

      expect(json['name'], 'Jordan 1');
      expect(json['price'], '1200');
      expect(json['imagePath'], 'path/to/image');
      expect(json['description'], 'A test shoe description');
      expect(dropTime.toDate(), now);
      expect(json['dropLink'], 'http://link.com');
    });
  });
}
