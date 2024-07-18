import 'package:bloc_test/bloc_test.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/app/home/pages/cubit/drop_cubit.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:drop_check/repositories/drop_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDropRepository extends Mock implements DropRepository {}

void main() {
  late DropCubit sut;
  late MockDropRepository repository;

  setUp(() {
    repository = MockDropRepository();
    sut = DropCubit(dropRepository: repository);
  });

  group('fetchShoe', () {
    final DateTime now = DateTime.now();
    group('success', () {
      setUp(() {
        when(() => repository.getShoeStream()).thenAnswer(
          (_) => Stream.value(
            [
              ShoeDropModel(
                  'name', 'price', 'imagePath', 'description', now, 'dropLink'),
            ],
          ),
        );
      });

      blocTest<DropCubit, DropState>(
        'emit Status.succes with shoe',
        build: () => sut,
        act: (cubit) => cubit.fetchShoe(),
        expect: () => [
          DropState(
            status: Status.succes,
            shoe: [
              ShoeDropModel(
                  'name', 'price', 'imagePath', 'description', now, 'dropLink'),
            ],
          )
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getShoeStream()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<DropCubit, DropState>(
        'emit Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchShoe(),
        expect: () => [
          DropState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          )
        ],
      );
    });
  });
  group('fetchAccessibleShoe', () {
    final DateTime now = DateTime.now();
    group('succes', () {
      setUp(() {
        when(() => repository.getAccessibleShoeStream()).thenAnswer(
          (_) => Stream.value(
            [
              AccessibleShoeDropModel(
                  'name', 'price', 'imagePath', 'description', now, 'dropLink'),
            ],
          ),
        );
      });

      blocTest<DropCubit, DropState>(
        'emit Status.succes with accessibleShoe',
        build: () => sut,
        act: (cubit) => cubit.fetchAccessibleShoe(),
        expect: () => [
          DropState(
            status: Status.succes,
            accessibleShoe: [
              AccessibleShoeDropModel(
                  'name', 'price', 'imagePath', 'description', now, 'dropLink'),
            ],
          )
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getAccessibleShoeStream()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<DropCubit, DropState>(
        'emit Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchAccessibleShoe(),
        expect: () => [
          DropState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          )
        ],
      );
    });
  });
  group('showAccessibleFalse', () {
    blocTest<DropCubit, DropState>(
      'emit showAccessible as false',
      build: () => sut,
      act: (cubit) => cubit.showAccessibleFalse(),
      expect: () => [
        DropState(
          showAccessible: false,
        ),
      ],
    );
  });

  group('showAccessibleTrue', () {
    blocTest<DropCubit, DropState>(
      'emit showAccessible as true',
      build: () => sut,
      act: (cubit) => cubit.showAccessibleTrue(),
      expect: () => [
        DropState(
          showAccessible: true,
        ),
      ],
    );
  });
}
