import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'shoe_drop_model.dart';

class ShoeCart extends ChangeNotifier {
  List<ShoeDropModel> shoeShop = [];

  ShoeCart() {
    fetchShoes();
  }

  Future<void> fetchShoes() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('drops').get();
      shoeShop = snapshot.docs.map((doc) {
        return ShoeDropModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          description: doc['description'],
          dropTime: doc['dropTime'],
          dropLink: doc['dropLink'],
        );
      }).toList();
      notifyListeners();
    } catch (e) {
      print('Error fetching shoes: $e');
    }
  }

  List<ShoeDropModel> getShoeList() {
    return shoeShop;
  }
}
