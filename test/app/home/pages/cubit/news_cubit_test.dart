import 'package:bloc_test/bloc_test.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/app/home/pages/cubit/news_cubit.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';
import 'package:drop_check/repositories/news_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsRepository extends Mock implements NewsRepository {}

void main() {
  late NewsCubit sut;
  late MockNewsRepository repository;

  setUp(() {
    repository = MockNewsRepository();
    sut = NewsCubit(newsRepository: repository);
  });

  group('featchBestSale', () {
    group('success', () {
      setUp(() {
        when(() => repository.getBestSaleStream()).thenAnswer(
          (_) => Stream.value(
            [
              BestSaleModel('imagePath', 'name', 'price', 'priceBefore',
                  'discountPercent', 'dropLink', 'description'),
            ],
          ),
        );
      });

      blocTest<NewsCubit, NewsState>(
        'emit Status.succes with bestSale',
        build: () => sut,
        act: (cubit) => cubit.fetchBestSale(),
        expect: () => [
          NewsState(
            status: Status.succes,
            bestSale: [
              BestSaleModel('imagePath', 'name', 'price', 'priceBefore',
                  'discountPercent', 'dropLink', 'description'),
            ],
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getBestSaleStream()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<NewsCubit, NewsState>(
        'emit Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchBestSale(),
        expect: () => [
          NewsState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
  group('fetchNewsfeed', () {
    group('success', () {
      setUp(() {
        when(() => repository.getNewsfeedStream()).thenAnswer(
          (_) => Stream.value(
            [
              NewsfeedModel('imagePath', 'dropLink'),
            ],
          ),
        );
      });

      blocTest<NewsCubit, NewsState>(
        'emit Status.succes with newsfeed',
        build: () => sut,
        act: (cubit) => cubit.fetchNewsfeed(),
        expect: () => [
          NewsState(
            status: Status.succes,
            newsfeed: [
              NewsfeedModel('imagePath', 'dropLink'),
            ],
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getNewsfeedStream()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<NewsCubit, NewsState>(
        'emit Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchNewsfeed(),
        expect: () => [
          NewsState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
