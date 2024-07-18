import 'package:bloc_test/bloc_test.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/app/home/pages/cubit/sale_cubit.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:drop_check/repositories/sale_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSaleRepository extends Mock implements SaleRepository {}

void main() {
  late SaleCubit sut;
  late MockSaleRepository repository;

  setUp(() {
    repository = MockSaleRepository();
    sut = SaleCubit(saleRepository: repository);
  });

  group('fetchManSale', () {
    group('succes', () {
      setUp(() {
        when(() => repository.getManSaleStream()).thenAnswer(
          (_) => Stream.value(
            [
              ManSaleModel('imagePath', 'name', 'price', 'priceBefore',
                  'discountPercent', 'dropLink', 'description'),
            ],
          ),
        );
      });

      blocTest<SaleCubit, SaleState>('emit Status.succes with manSale',
          build: () => sut,
          act: (cubit) => cubit.fetchManSale(),
          expect: () => [
                SaleState(
                  status: Status.succes,
                  manSale: [
                    ManSaleModel('imagePath', 'name', 'price', 'priceBefore',
                        'discountPercent', 'dropLink', 'description'),
                  ],
                )
              ]);
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getManSaleStream()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<SaleCubit, SaleState>(
        'emit Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchManSale(),
        expect: () => [
          SaleState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
  group('fetchWomanSale', () {
    group('succes', () {
      setUp(() {
        when(() => repository.getWomanSaleStream()).thenAnswer(
          (_) => Stream.value(
            [
              WomanSaleModel('imagePath', 'name', 'price', 'priceBefore',
                  'discountPercent', 'dropLink', 'description'),
            ],
          ),
        );
      });

      blocTest<SaleCubit, SaleState>('emit Status.succes with womanSale',
          build: () => sut,
          act: (cubit) => cubit.fetchWomanSale(),
          expect: () => [
                SaleState(
                  status: Status.succes,
                  womanSale: [
                    WomanSaleModel('imagePath', 'name', 'price', 'priceBefore',
                        'discountPercent', 'dropLink', 'description'),
                  ],
                )
              ]);
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getWomanSaleStream()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<SaleCubit, SaleState>(
        'emit Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchWomanSale(),
        expect: () => [
          SaleState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
  group('fetchOtherSale', () {
    group('succes', () {
      setUp(() {
        when(() => repository.getOtherSaleStream()).thenAnswer(
          (_) => Stream.value(
            [
              OtherSaleModel('imagePath', 'name', 'price', 'priceBefore',
                  'discountPercent', 'dropLink', 'description'),
            ],
          ),
        );
      });

      blocTest<SaleCubit, SaleState>('emit Status.succes with otherSale',
          build: () => sut,
          act: (cubit) => cubit.fetchOtherSale(),
          expect: () => [
                SaleState(
                  status: Status.succes,
                  otherSale: [
                    OtherSaleModel('imagePath', 'name', 'price', 'priceBefore',
                        'discountPercent', 'dropLink', 'description'),
                  ],
                )
              ]);
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getOtherSaleStream()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<SaleCubit, SaleState>(
        'emit Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchOtherSale(),
        expect: () => [
          SaleState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });

  group('selectedCategoryMan', () {
    blocTest<SaleCubit, SaleState>(
      'emit SaleCategory.man',
      build: () => sut,
      act: (cubit) => cubit.selectedCategoryMan(),
      expect: () => [
        SaleState(
          selectedCategory: SaleCategory.men,
        ),
      ],
    );
  });
  group('selectedCategoryWoman', () {
    blocTest<SaleCubit, SaleState>(
      'emit SaleCategory.women',
      build: () => sut,
      act: (cubit) => cubit.selectedCategoryWoman(),
      expect: () => [
        SaleState(
          selectedCategory: SaleCategory.women,
        ),
      ],
    );
  });
  group('selectedCategoryOther', () {
    blocTest<SaleCubit, SaleState>(
      'emit SaleCategory.other',
      build: () => sut,
      act: (cubit) => cubit.selectedCategoryOther(),
      expect: () => [
        SaleState(
          selectedCategory: SaleCategory.other,
        ),
      ],
    );
  });
}
