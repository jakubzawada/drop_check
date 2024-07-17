import 'package:cloud_firestore/cloud_firestore.dart';

class DropRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>> getShoeStream() {
    return FirebaseFirestore.instance.collection('drops').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getAccessibleShoeStream() {
    return FirebaseFirestore.instance.collection('accessibleDrops').snapshots();
  }
}
