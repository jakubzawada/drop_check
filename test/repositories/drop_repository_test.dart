import 'package:drop_check/data/remote_data_sources/drop_remote_data_source.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:drop_check/repositories/drop_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MockDropDataSource extends Mock implements DropRemoteDataSource {}

class MockQuerySnapshot extends Mock
    implements QuerySnapshot<Map<String, dynamic>> {}

// ignore: subtype_of_sealed_class
class MockQueryDocumentSnapshot extends Mock
    implements QueryDocumentSnapshot<Map<String, dynamic>> {}

void main() {
  late DropRepository sut;
  late MockDropDataSource dataSource;
  late MockQuerySnapshot querySnapshot;
  late MockQueryDocumentSnapshot queryDocumentSnapshot;

  setUp(() {
    dataSource = MockDropDataSource();
    sut = DropRepository(dataSource: dataSource);

    querySnapshot = MockQuerySnapshot();
    queryDocumentSnapshot = MockQueryDocumentSnapshot();
  });

  group('getShoeStream', () {
    test('should return a stream of ShoeDropModel', () async {
      final now = DateTime.now();
      final timestamp = Timestamp.fromDate(now);

      final shoeDropData = {
        'name': 'name',
        'price': 'price',
        'imagePath': 'imagePath',
        'description': 'description',
        'dropTime': timestamp,
        'dropLink': 'dropLink',
      };

      when(() => queryDocumentSnapshot.data()).thenReturn(shoeDropData);
      when(() => querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
      when(() => dataSource.getShoeStream())
          .thenAnswer((_) => Stream.value(querySnapshot));

      final result = sut.getShoeStream().first;

      final expectedResult = [ShoeDropModel.fromJson(shoeDropData)];
      expect(await result, expectedResult);
    });
  });

  group('getAccessibleShoeStream', () {
    test('should return a stream of AccessibleShoeDropModel', () async {
      final now = DateTime.now();
      final timestamp = Timestamp.fromDate(now);

      final accessibleShoeDropData = {
        'name': 'name',
        'price': 'price',
        'imagePath': 'imagePath',
        'description': 'description',
        'dropTime': timestamp,
        'dropLink': 'dropLink',
      };

      when(() => queryDocumentSnapshot.data())
          .thenReturn(accessibleShoeDropData);
      when(() => querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
      when(() => dataSource.getAccessibleShoeStream())
          .thenAnswer((_) => Stream.value(querySnapshot));

      final result = sut.getAccessibleShoeStream().first;

      final expectedResult = [
        AccessibleShoeDropModel.fromJson(accessibleShoeDropData)
      ];
      expect(await result, expectedResult);
    });
  });
}
