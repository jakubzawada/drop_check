import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:flutter/material.dart';

class AccessibleShoeCart extends ChangeNotifier {
  List<AccessibleShoeDropModel> accessibleShoeShop = [];

  AccessibleShoeCart() {
    accessibleFetchShoes();
  }

  Future<void> accessibleFetchShoes() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('accessibleDrops').get();
      accessibleShoeShop = snapshot.docs.map((doc) {
        return AccessibleShoeDropModel(
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

  List<AccessibleShoeDropModel> getAccessibleShoeList() {
    return accessibleShoeShop;
  }
}
