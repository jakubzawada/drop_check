import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getBestSalesStream() {
    return FirebaseFirestore.instance.collection('bestSales').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getNewsfeedStream() {
    return FirebaseFirestore.instance.collection('newsfeed').snapshots();
  }
}
