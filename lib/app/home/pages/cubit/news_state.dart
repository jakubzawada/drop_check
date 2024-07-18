part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  factory NewsState({
    @Default([]) List<BestSaleModel> bestSale,
    @Default([]) List<NewsfeedModel> newsfeed,
    @Default('') String errorMessage,
    @Default(Status.loading) Status status,
  }) = _NewsState;
}
