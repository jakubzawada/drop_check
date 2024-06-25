import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/woman_sale_model.dart';
import 'package:flutter/material.dart';

class WomanSaleCart extends ChangeNotifier {
  List<WomanSaleModel> womanSaleShop = [];

  WomanSaleCart() {
    fetchWomanSale();
  }

  Future<void> fetchWomanSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('womanSales').get();
      womanSaleShop = snapshot.docs.map((doc) {
        return WomanSaleModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          dropLink: doc['dropLink'],
          priceBefore: doc['priceBefore'],
          discountPercent: doc['discountPercent'],
          description: doc['description'],
        );
      }).toList();
      notifyListeners();
    } catch (e) {
      print('Error fetching shoes: $e');
    }
  }

  List<WomanSaleModel> getWomanSaleList() {
    return womanSaleShop;
  }
}
