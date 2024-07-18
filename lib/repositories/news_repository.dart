import 'package:drop_check/data/remote_data_sources/news_remote_data_source.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsRepository {
  NewsRepository({required this.dataSource});

  final NewsRemoteDataSource dataSource;

  Stream<List<BestSaleModel>> getBestSaleStream() {
    return dataSource.getBestSalesStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final json = doc.data();
        return BestSaleModel.fromJson(json);
      }).toList();
    });
  }

  Stream<List<NewsfeedModel>> getNewsfeedStream() {
    return dataSource.getNewsfeedStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final json = doc.data();
        return NewsfeedModel.fromJson(json);
      }).toList();
    });
  }
}
