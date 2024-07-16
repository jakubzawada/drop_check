import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:drop_check/models/shoe_drop_model.dart';

class DropRepository {
  Stream<List<ShoeDropModel>> getShoeStream() {
    return FirebaseFirestore.instance
        .collection('drops')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return ShoeDropModel(
            name: doc['name'],
            price: doc['price'],
            imagePath: doc['imagePath'],
            description: doc['description'],
            dropTime: doc['dropTime'],
            dropLink: doc['dropLink'],
          );
        },
      ).toList();
    });
  }

  Stream<List<AccessibleShoeDropModel>> getAccessibleShoeStream() {
    return FirebaseFirestore.instance
        .collection('accessibleDrops')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return AccessibleShoeDropModel(
            name: doc['name'],
            price: doc['price'],
            imagePath: doc['imagePath'],
            description: doc['description'],
            dropTime: doc['dropTime'],
            dropLink: doc['dropLink'],
          );
        },
      ).toList();
    });
  }
}
