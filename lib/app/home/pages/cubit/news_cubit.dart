import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';
import 'package:drop_check/repositories/news_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_cubit.freezed.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsRepository newsRepository;

  NewsCubit({required this.newsRepository})
      : super(
          NewsState(),
        );

  Future<void> fetchBestSale() async {
    try {
      newsRepository.getBestSaleStream().listen(
        (bestSale) {
          emit(
            state.copyWith(
              status: Status.succes,
              bestSale: bestSale,
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

  Future<void> fetchNewsfeed() async {
    try {
      newsRepository.getNewsfeedStream().listen(
        (newsfeed) {
          emit(
            state.copyWith(
              status: Status.succes,
              newsfeed: newsfeed,
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
}
