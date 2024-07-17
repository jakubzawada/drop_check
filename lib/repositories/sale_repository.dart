import 'package:drop_check/data/remote_data_sources/sale_remote_data_source.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';

class SaleRepository {
  SaleRepository(this.dataSource);

  final SaleRemoteDataSource dataSource;

  Stream<List<ManSaleModel>> getManSaleStream() {
    return dataSource.getManSaleStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return ManSaleModel(
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

  Stream<List<WomanSaleModel>> getWomanSaleStream() {
    return dataSource.getWomanSaleStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return WomanSaleModel(
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

  Stream<List<OtherSaleModel>> getOtherSaleStream() {
    return dataSource.getOtherSaleStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return OtherSaleModel(
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
}
