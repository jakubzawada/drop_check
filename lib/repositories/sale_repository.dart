import 'package:drop_check/data/remote_data_sources/sale_remote_data_source.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaleRepository {
  SaleRepository({required this.dataSource});

  final SaleRemoteDataSource dataSource;

  Stream<List<ManSaleModel>> getManSaleStream() {
    return dataSource.getManSaleStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final json = doc.data();
        return ManSaleModel.fromJson(json);
      }).toList();
    });
  }

  Stream<List<WomanSaleModel>> getWomanSaleStream() {
    return dataSource.getWomanSaleStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final json = doc.data();
        return WomanSaleModel.fromJson(json);
      }).toList();
    });
  }

  Stream<List<OtherSaleModel>> getOtherSaleStream() {
    return dataSource.getOtherSaleStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final json = doc.data();
        return OtherSaleModel.fromJson(json);
      }).toList();
    });
  }
}
