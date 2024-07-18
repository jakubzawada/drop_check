import 'package:drop_check/data/remote_data_sources/sale_remote_data_source.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/repositories/sale_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MockSaleDataSource extends Mock implements SaleRemoteDataSource {}

class MockQuerySnapshot extends Mock
    implements QuerySnapshot<Map<String, dynamic>> {}

// ignore: subtype_of_sealed_class
class MockQueryDocumentSnapshot extends Mock
    implements QueryDocumentSnapshot<Map<String, dynamic>> {}

void main() {
  late SaleRepository sut;
  late MockSaleDataSource dataSource;
  late MockQuerySnapshot querySnapshot;
  late MockQueryDocumentSnapshot queryDocumentSnapshot;

  setUp(() {
    dataSource = MockSaleDataSource();
    sut = SaleRepository(dataSource: dataSource);

    querySnapshot = MockQuerySnapshot();
    queryDocumentSnapshot = MockQueryDocumentSnapshot();
  });

  group('getManSaleStream', () {
    test('should return a stream of ManSaleModel', () async {
      final manSaleData = {
        'imagePath': 'imagePath',
        'name': 'name',
        'price': 'price',
        'priceBefore': 'priceBefore',
        'discountPercent': 'discountPercent',
        'dropLink': 'dropLink',
        'description': 'description',
      };

      when(() => queryDocumentSnapshot.data()).thenReturn(manSaleData);
      when(() => querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
      when(() => dataSource.getManSaleStream())
          .thenAnswer((_) => Stream.value(querySnapshot));

      final result = sut.getManSaleStream().first;

      final expectedResult = [ManSaleModel.fromJson(manSaleData)];
      expect(await result, expectedResult);
    });
  });

  group('getWomanSaleStream', () {
    test('should return a stream of WomanSaleModel', () async {
      final womanSaleData = {
        'imagePath': 'imagePath',
        'name': 'name',
        'price': 'price',
        'priceBefore': 'priceBefore',
        'discountPercent': 'discountPercent',
        'dropLink': 'dropLink',
        'description': 'description',
      };

      when(() => queryDocumentSnapshot.data()).thenReturn(womanSaleData);
      when(() => querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
      when(() => dataSource.getWomanSaleStream())
          .thenAnswer((_) => Stream.value(querySnapshot));

      final result = sut.getWomanSaleStream().first;

      final expectedResult = [WomanSaleModel.fromJson(womanSaleData)];
      expect(await result, expectedResult);
    });
  });

  group('getOtherSaleStream', () {
    test('should return a stream of OtherSaleModel', () async {
      final otherSaleData = {
        'imagePath': 'imagePath',
        'name': 'name',
        'price': 'price',
        'priceBefore': 'priceBefore',
        'discountPercent': 'discountPercent',
        'dropLink': 'dropLink',
        'description': 'description',
      };

      when(() => queryDocumentSnapshot.data()).thenReturn(otherSaleData);
      when(() => querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
      when(() => dataSource.getOtherSaleStream())
          .thenAnswer((_) => Stream.value(querySnapshot));

      final result = sut.getOtherSaleStream().first;

      final expectedResult = [OtherSaleModel.fromJson(otherSaleData)];
      expect(await result, expectedResult);
    });
  });
}
