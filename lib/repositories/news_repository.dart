import 'package:drop_check/data/remote_data_sources/news_remote_data_source.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';

class NewsRepository {
  NewsRepository(this.dataSource);

  final NewsRemoteDataSource dataSource;

  Stream<List<BestSaleModel>> getBestSaleStream() {
    return dataSource.getBestSalesStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return BestSaleModel(
          name: data['name'],
          price: data['price'],
          imagePath: data['imagePath'],
          dropLink: data['dropLink'],
          priceBefore: data['priceBefore'],
          discountPercent: data['discountPercent'],
          description: data['description'],
        );
      }).toList();
    });
  }

  Stream<List<NewsfeedModel>> getNewsfeedStream() {
    return dataSource.getNewsfeedStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return NewsfeedModel(
          imagePath: data['imagePath'],
          dropLink: data['dropLink'],
        );
      }).toList();
    });
  }
}
