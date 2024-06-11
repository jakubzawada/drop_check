import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/other_sale_model.dart';
import 'package:flutter/material.dart';

class OtherSaleCart extends ChangeNotifier {
  List<OtherSaleModel> otherSaleShop = [];

  OtherSaleCart() {
    fetchOtherSale();
  }

  Future<void> fetchOtherSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('otherSales').get();
      otherSaleShop = snapshot.docs.map((doc) {
        return OtherSaleModel(
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

  List<OtherSaleModel> getOtherSaleList() {
    return otherSaleShop;
  }
}
