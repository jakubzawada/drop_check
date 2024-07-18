part of 'sale_cubit.dart';

@freezed
class SaleState with _$SaleState {
  factory SaleState({
    @Default([]) List<ManSaleModel> manSale,
    @Default([]) List<WomanSaleModel> womanSale,
    @Default([]) List<OtherSaleModel> otherSale,
    @Default(SaleCategory.men) SaleCategory selectedCategory,
    @Default('') String errorMessage,
    @Default(Status.loading) Status status,
  }) = _SaleState;
}
