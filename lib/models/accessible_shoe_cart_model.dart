import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:flutter/material.dart';

class AccessibleCart extends ChangeNotifier {
  List<AccessibleShoeDropModel> accessibleShoeShop = [];

  AccessibleCart() {
    accessibleFetchShoes();
  }

  Future<void> accessibleFetchShoes() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('accessibledrops').get();
      accessibleShoeShop = snapshot.docs.map((doc) {
        return AccessibleShoeDropModel(
          name: doc['name'],
          price: doc['price'],
          imagePath: doc['imagePath'],
          description: doc['description'],
          dropTime: doc['dropTime'],
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
