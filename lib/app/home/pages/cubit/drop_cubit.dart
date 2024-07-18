import 'package:bloc/bloc.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:drop_check/repositories/drop_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_cubit.freezed.dart';
part 'drop_state.dart';

class DropCubit extends Cubit<DropState> {
  final DropRepository dropRepository;

  DropCubit({required this.dropRepository})
      : super(
          DropState(),
        );

  Future<void> fetchShoe() async {
    dropRepository.getShoeStream().listen(
      (shoe) {
        emit(
          state.copyWith(
            status: Status.succes,
            shoe: shoe,
          ),
        );
      },
      onError: (error) {
        emit(
          state.copyWith(
            status: Status.error,
            errorMessage: error.toString(),
            shoe: const [],
          ),
        );
      },
    );
  }

  Future<void> fetchAccessibleShoe() async {
    dropRepository.getAccessibleShoeStream().listen(
      (accessibleShoe) {
        emit(
          state.copyWith(
            status: Status.succes,
            accessibleShoe: accessibleShoe,
          ),
        );
      },
      onError: (error) {
        emit(
          state.copyWith(
            status: Status.error,
            errorMessage: error.toString(),
            accessibleShoe: const [],
          ),
        );
      },
    );
  }

  Future<void> showAccessibleFalse() async {
    emit(
      state.copyWith(showAccessible: false),
    );
  }

  Future<void> showAccessibleTrue() async {
    emit(
      state.copyWith(showAccessible: true),
    );
  }
}
