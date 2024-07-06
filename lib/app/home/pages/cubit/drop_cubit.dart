import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'drop_state.dart';

class DropCubit extends Cubit<DropState> {
  DropCubit()
      : super(
          const DropState(
            showAccessible: false,
          ),
        );

  Future<void> showAccessibleFalse() async {
    emit(const DropState(showAccessible: false));
  }

  Future<void> showAccessibleTrue() async {
    emit(const DropState(showAccessible: true));
  }
}
