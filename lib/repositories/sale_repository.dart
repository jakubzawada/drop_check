import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:drop_check/models/woman_sale_model.dart';

class SaleRepository {
  Stream<List<ManSaleModel>> getManSaleStream() {
    return FirebaseFirestore.instance
        .collection('manSales')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return ManSaleModel(
            name: doc['name'],
            price: doc['price'],
            imagePath: doc['imagePath'],
            dropLink: doc['dropLink'],
            priceBefore: doc['priceBefore'],
            discountPercent: doc['discountPercent'],
            description: doc['description'],
          );
        },
      ).toList();
    });
  }

  Stream<List<WomanSaleModel>> getWomanSaleStream() {
    return FirebaseFirestore.instance
        .collection('womanSales')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return WomanSaleModel(
            name: doc['name'],
            price: doc['price'],
            imagePath: doc['imagePath'],
            dropLink: doc['dropLink'],
            priceBefore: doc['priceBefore'],
            discountPercent: doc['discountPercent'],
            description: doc['description'],
          );
        },
      ).toList();
    });
  }

  Stream<List<OtherSaleModel>> getOtherSaleStream() {
    return FirebaseFirestore.instance
        .collection('otherSales')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return OtherSaleModel(
            name: doc['name'],
            price: doc['price'],
            imagePath: doc['imagePath'],
            dropLink: doc['dropLink'],
            priceBefore: doc['priceBefore'],
            discountPercent: doc['discountPercent'],
            description: doc['description'],
          );
        },
      ).toList();
    });
  }
}
