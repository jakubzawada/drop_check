import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:drop_check/models/shoe_drop_model.dart';
import 'package:meta/meta.dart';

part 'drop_state.dart';

class DropCubit extends Cubit<DropState> {
  DropCubit()
      : super(
          const DropState(
            errorMessage: '',
            status: Status.loading,
            showAccessible: false,
            shoe: [],
            accessibleShoe: [],
          ),
        );

  Future<void> fetchShoe() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('drops').get();
      List<ShoeDropModel> shoe = snapshot.docs.map((doc) {
        return ShoeDropModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          description: doc['description'],
          dropTime: doc['dropTime'],
          dropLink: doc['dropLink'],
        );
      }).toList();
      emit(
        state.copyWith(
          status: Status.succes,
          errorMessage: '',
          shoe: shoe,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
          shoe: const [],
        ),
      );
    }
  }

  Future<void> fetchAccessibleShoe() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('accessibleDrops').get();
      List<AccessibleShoeDropModel> accessibleShoe = snapshot.docs.map((doc) {
        return AccessibleShoeDropModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          description: doc['description'],
          dropTime: doc['dropTime'],
          dropLink: doc['dropLink'],
        );
      }).toList();
      emit(
        state.copyWith(
          status: Status.succes,
          errorMessage: '',
          accessibleShoe: accessibleShoe,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
          accessibleShoe: const [],
        ),
      );
    }
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
