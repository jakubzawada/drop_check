import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:meta/meta.dart';

part 'sale_state.dart';

class SaleCubit extends Cubit<SaleState> {
  SaleCubit()
      : super(
          const SaleState(
            errorMessage: '',
            status: Status.loading,
            selectedCategory: SaleCategory.men,
            manSale: [],
            womanSale: [],
            otherSale: [],
          ),
        );

  Future<void> fetchManSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('manSales').get();
      List<ManSaleModel> manSale = snapshot.docs.map((doc) {
        return ManSaleModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          dropLink: doc['dropLink'],
          priceBefore: doc['priceBefore'],
          discountPercent: doc['discountPercent'],
          description: doc['description'],
        );
      }).toList();
      emit(
        state.copyWith(
          status: Status.succes,
          errorMessage: '',
          manSale: manSale,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
          manSale: const [],
        ),
      );
    }
  }

  Future<void> fetchWomanSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('womanSales').get();
      List<WomanSaleModel> womanSale = snapshot.docs.map((doc) {
        return WomanSaleModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          dropLink: doc['dropLink'],
          priceBefore: doc['priceBefore'],
          discountPercent: doc['discountPercent'],
          description: doc['description'],
        );
      }).toList();
      emit(
        state.copyWith(
          status: Status.succes,
          errorMessage: '',
          womanSale: womanSale,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
          womanSale: const [],
        ),
      );
    }
  }

  Future<void> fetchOtherSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('otherSales').get();
      List<OtherSaleModel> otherSale = snapshot.docs.map((doc) {
        return OtherSaleModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          dropLink: doc['dropLink'],
          priceBefore: doc['priceBefore'],
          discountPercent: doc['discountPercent'],
          description: doc['description'],
        );
      }).toList();
      emit(
        state.copyWith(
          status: Status.succes,
          errorMessage: '',
          otherSale: otherSale,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
          otherSale: const [],
        ),
      );
    }
  }

  Future<void> selectedCategoryMan() async {
    emit(
      state.copyWith(
        selectedCategory: SaleCategory.men,
      ),
    );
  }

  Future<void> selectedCategoryWoman() async {
    emit(
      state.copyWith(
        selectedCategory: SaleCategory.women,
      ),
    );
  }

  Future<void> selectedCategoryOther() async {
    emit(
      state.copyWith(
        selectedCategory: SaleCategory.other,
      ),
    );
  }
}
