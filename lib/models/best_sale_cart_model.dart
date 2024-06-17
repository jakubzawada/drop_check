import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/best_sale_model.dart';
import 'package:flutter/material.dart';

class BestSaleCart extends ChangeNotifier {
  List<BestSaleModel> bestSaleShop = [];

  BestSaleCart() {
    fetchBestSale();
  }

  Future<void> fetchBestSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('bestSales').get();
      bestSaleShop = snapshot.docs.map((doc) {
        return BestSaleModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          dropLink: doc['dropLink'],
          priceBefore: doc['priceBefore'],
          discountPercent: doc['discountPercent'],
        );
      }).toList();
      notifyListeners();
    } catch (e) {
      print('Error fetching shoes: $e');
    }
  }

  List<BestSaleModel> getBestSaleList() {
    return bestSaleShop;
  }
}
