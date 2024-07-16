import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';
import 'package:drop_check/repositories/news_repository.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsRepository newsRepository;

  NewsCubit(this.newsRepository)
      : super(const NewsState(
          errorMessage: '',
          status: Status.loading,
          bestSale: [],
          newsfeed: [],
        ));

  Future<void> fetchBestSale() async {
    newsRepository.getBestSaleStream().listen(
      (bestSale) {
        emit(
          state.copyWith(
            status: Status.succes,
            bestSale: bestSale,
          ),
        );
      },
      onError: (error) {
        emit(
          state.copyWith(
            status: Status.error,
            errorMessage: error.toString(),
            bestSale: const [],
          ),
        );
      },
    );
  }

  Future<void> fetchNewsfeed() async {
    newsRepository.getNewsfeedStream().listen(
      (newsfeed) {
        emit(
          state.copyWith(
            status: Status.succes,
            errorMessage: '',
            newsfeed: newsfeed,
          ),
        );
      },
      onError: (error) {
        emit(
          state.copyWith(
            status: Status.error,
            errorMessage: error.toString(),
            newsfeed: const [],
          ),
        );
      },
    );
  }
}
