part of 'news_cubit.dart';

@immutable
class NewsState {
  final List<BestSaleModel> bestSale;
  final List<NewsfeedModel> newsfeed;
  final String errorMessage;
  final Status status;

  const NewsState({
    required this.bestSale,
    required this.newsfeed,
    required this.errorMessage,
    required this.status,
  });

  NewsState copyWith({
    List<BestSaleModel>? bestSale,
    List<NewsfeedModel>? newsfeed,
    String? errorMessage,
    Status? status,
  }) {
    return NewsState(
      bestSale: bestSale ?? this.bestSale,
      newsfeed: newsfeed ?? this.newsfeed,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
    );
  }
}
