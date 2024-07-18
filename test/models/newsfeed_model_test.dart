import 'package:flutter_test/flutter_test.dart';
import 'package:drop_check/models/newsfeed_model.dart';

void main() {
  group('NewsfeedModel', () {
    test('should parse from JSON', () {
      final json = {
        'imagePath': 'path/to/image',
        'dropLink': 'http://link.com',
      };

      final model = NewsfeedModel.fromJson(json);

      expect(model.imagePath, 'path/to/image');
      expect(model.dropLink, 'http://link.com');
    });

    test('should convert to JSON', () {
      final model = NewsfeedModel(
        'path/to/image',
        'http://link.com',
      );

      final json = model.toJson();

      expect(json['imagePath'], 'path/to/image');
      expect(json['dropLink'], 'http://link.com');
    });
  });
}
