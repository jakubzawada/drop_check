import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:drop_check/models/newsfeed_model.dart';

class NewsRepository {
  Stream<List<BestSaleModel>> getBestSaleStream() {
    return FirebaseFirestore.instance
        .collection('bestSales')
        .snapshots()
        .map((querySnapshot) => querySnapshot.docs.map((doc) {
              return BestSaleModel(
                name: doc['name'],
                price: doc['price'],
                imagePath: doc['imagePath'],
                dropLink: doc['dropLink'],
                priceBefore: doc['priceBefore'],
                discountPercent: doc['discountPercent'],
                description: doc['description'],
              );
            }).toList());
  }

  Stream<List<NewsfeedModel>> getNewsfeedStream() {
    return FirebaseFirestore.instance
        .collection('newsfeed')
        .snapshots()
        .map((querySnapshot) => querySnapshot.docs.map((doc) {
              return NewsfeedModel(
                imagePath: doc['imagePath'],
                dropLink: doc['dropLink'],
              );
            }).toList());
  }
}
