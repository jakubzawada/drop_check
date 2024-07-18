import 'package:bloc/bloc.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:drop_check/repositories/sale_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_cubit.freezed.dart';
part 'sale_state.dart';

class SaleCubit extends Cubit<SaleState> {
  final SaleRepository saleRepository;

  SaleCubit({required this.saleRepository})
      : super(
          SaleState(),
        );

  Future<void> fetchManSale() async {
    try {
      saleRepository.getManSaleStream().listen(
        (manSale) {
          emit(
            state.copyWith(
              status: Status.succes,
              manSale: manSale,
            ),
          );
        },
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> fetchWomanSale() async {
    try {
      saleRepository.getWomanSaleStream().listen(
        (womanSale) {
          emit(
            state.copyWith(
              status: Status.succes,
              womanSale: womanSale,
            ),
          );
        },
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> fetchOtherSale() async {
    try {
      saleRepository.getOtherSaleStream().listen(
        (otherSale) {
          emit(
            state.copyWith(
              status: Status.succes,
              otherSale: otherSale,
            ),
          );
        },
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
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
