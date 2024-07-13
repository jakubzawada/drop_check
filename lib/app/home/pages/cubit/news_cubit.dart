import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit()
      : super(const NewsState(
          errorMessage: '',
          status: Status.loading,
          bestSale: [],
          newsfeed: [],
        ));

  Future<void> fetchBestSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('bestSales').get();
      List<BestSaleModel> bestSales = snapshot.docs.map((doc) {
        return BestSaleModel(
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
          bestSale: bestSales,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
          bestSale: const [],
        ),
      );
    }
  }

  Future<void> fetchNewsFeed() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('newsfeed').get();
      List<NewsfeedModel> newsfeed = snapshot.docs.map((doc) {
        return NewsfeedModel(
          imagePath: doc['imagePath'],
          dropLink: doc['dropLink'],
        );
      }).toList();
      emit(
        state.copyWith(
          status: Status.succes,
          errorMessage: '',
          newsfeed: newsfeed,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: error.toString(),
          newsfeed: const [],
        ),
      );
    }
  }
}
