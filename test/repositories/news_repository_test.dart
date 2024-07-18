import 'package:drop_check/data/remote_data_sources/news_remote_data_source.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';
import 'package:drop_check/repositories/news_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MockNewsDataSource extends Mock implements NewsRemoteDataSource {}

class MockQuerySnapshot extends Mock
    implements QuerySnapshot<Map<String, dynamic>> {}

// ignore: subtype_of_sealed_class
class MockQueryDocumentSnapshot extends Mock
    implements QueryDocumentSnapshot<Map<String, dynamic>> {}

void main() {
  late NewsRepository sut;
  late MockNewsDataSource dataSource;
  late MockQuerySnapshot querySnapshot;
  late MockQueryDocumentSnapshot queryDocumentSnapshot;

  setUp(() {
    dataSource = MockNewsDataSource();
    sut = NewsRepository(dataSource: dataSource);

    querySnapshot = MockQuerySnapshot();
    queryDocumentSnapshot = MockQueryDocumentSnapshot();
  });

  group('getBestSaleStream', () {
    test('should return a stream of BestSaleModel', () async {
      final bestSaleData = {
        'imagePath': 'imagePath',
        'name': 'name',
        'price': 'price',
        'priceBefore': 'priceBefore',
        'discountPercent': 'discountPercent',
        'dropLink': 'dropLink',
        'description': 'description',
      };

      when(() => queryDocumentSnapshot.data()).thenReturn(bestSaleData);
      when(() => querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
      when(() => dataSource.getBestSalesStream())
          .thenAnswer((_) => Stream.value(querySnapshot));

      final result = sut.getBestSaleStream().first;

      final expectedResult = [BestSaleModel.fromJson(bestSaleData)];
      expect(await result, expectedResult);
    });
  });

  group('getNewsfeedStream', () {
    test('should return a stream of NewsfeedModel', () async {
      final newsfeedData = {
        'imagePath': 'imagePath',
        'dropLink': 'dropLink',
      };

      when(() => queryDocumentSnapshot.data()).thenReturn(newsfeedData);
      when(() => querySnapshot.docs).thenReturn([queryDocumentSnapshot]);
      when(() => dataSource.getNewsfeedStream())
          .thenAnswer((_) => Stream.value(querySnapshot));

      final result = sut.getNewsfeedStream().first;

      final expectedResult = [NewsfeedModel.fromJson(newsfeedData)];
      expect(await result, expectedResult);
    });
  });
}
