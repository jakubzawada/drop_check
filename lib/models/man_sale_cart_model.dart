import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/man_sale_model.dart';
import 'package:flutter/material.dart';

class ManSaleCart extends ChangeNotifier {
  List<ManSaleModel> manSaleShop = [];

  ManSaleCart() {
    fetchManSale();
  }

  Future<void> fetchManSale() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('manSales').get();
      manSaleShop = snapshot.docs.map((doc) {
        return ManSaleModel(
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

  List<ManSaleModel> getManSaleList() {
    return manSaleShop;
  }
}
