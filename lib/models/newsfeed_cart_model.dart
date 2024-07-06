import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/newsfeed_model.dart';
import 'package:flutter/material.dart';

class NewsfeedCart extends ChangeNotifier {
  List<NewsfeedModel> newsfeedShop = [];

  NewsfeedCart() {
    fetchNewsfeed();
  }

  Future<void> fetchNewsfeed() async {
    try {
      QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('newsfeed').get();
      newsfeedShop = snapshot.docs.map((doc) {
        return NewsfeedModel(
          imagePath: doc['imagePath'],
          dropLink: doc['dropLink'],
        );
      }).toList();
      notifyListeners();
    } catch (e) {
      // ignore: avoid_print
      print('Error fetching shoes: $e');
    }
  }

  List<NewsfeedModel> getNewsfeedList() {
    return newsfeedShop;
  }
}
