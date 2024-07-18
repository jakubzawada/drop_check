import 'package:cloud_firestore/cloud_firestore.dart';

class NewsRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getBestSalesStream() {
    return FirebaseFirestore.instance.collection('bestSales').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getNewsfeedStream() {
    return FirebaseFirestore.instance.collection('newsfeed').snapshots();
  }
}
