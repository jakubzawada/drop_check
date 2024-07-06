import 'package:bloc/bloc.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:meta/meta.dart';

part 'sale_state.dart';

class SaleCubit extends Cubit<SaleState> {
  SaleCubit()
      : super(
          const SaleState(
            selectedCategory: SaleCategory.men,
          ),
        );

  Future<void> selectedCategoryMan() async {
    emit(
      const SaleState(
        selectedCategory: SaleCategory.men,
      ),
    );
  }

  Future<void> selectedCategoryWoman() async {
    emit(
      const SaleState(
        selectedCategory: SaleCategory.women,
      ),
    );
  }

  Future<void> selectedCategoryOther() async {
    emit(
      const SaleState(
        selectedCategory: SaleCategory.other,
      ),
    );
  }
}
