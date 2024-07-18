import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaleRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getManSaleStream() {
    return FirebaseFirestore.instance.collection('manSales').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getWomanSaleStream() {
    return FirebaseFirestore.instance.collection('womanSales').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getOtherSaleStream() {
    return FirebaseFirestore.instance.collection('otherSales').snapshots();
  }
}
