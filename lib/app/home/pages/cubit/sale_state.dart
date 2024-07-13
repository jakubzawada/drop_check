part of 'sale_cubit.dart';

@immutable
class SaleState {
  final List<ManSaleModel> manSale;
  final List<WomanSaleModel> womanSale;
  final List<OtherSaleModel> otherSale;
  final SaleCategory selectedCategory;
  final String errorMessage;
  final Status status;

  const SaleState({
    required this.manSale,
    required this.womanSale,
    required this.otherSale,
    required this.selectedCategory,
    required this.errorMessage,
    required this.status,
  });

  SaleState copyWith({
    List<ManSaleModel>? manSale,
    List<WomanSaleModel>? womanSale,
    List<OtherSaleModel>? otherSale,
    SaleCategory? selectedCategory,
    String? errorMessage,
    Status? status,
  }) {
    return SaleState(
      manSale: manSale ?? this.manSale,
      womanSale: womanSale ?? this.womanSale,
      otherSale: otherSale ?? this.otherSale,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
    );
  }
}
