import 'package:drop_check/data/remote_data_sources/drop_remote_data_source.dart';
import 'package:drop_check/models/accessible_shoe_drop_model.dart';
import 'package:drop_check/models/shoe_drop_model.dart';

class DropRepository {
  DropRepository(this.dataSource);

  final DropRemoteDataSource dataSource;

  Stream<List<ShoeDropModel>> getShoeStream() {
    return dataSource.getShoeStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return ShoeDropModel(
          name: data['name'],
          price: data['price'],
          imagePath: data['imagePath'],
          description: data['description'],
          dropTime: data['dropTime'],
          dropLink: data['dropLink'],
        );
      }).toList();
    });
  }

  Stream<List<AccessibleShoeDropModel>> getAccessibleShoeStream() {
    return dataSource.getAccessibleShoeStream().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return AccessibleShoeDropModel(
          name: data['name'],
          price: data['price'],
          imagePath: data['imagePath'],
          description: data['description'],
          dropTime: data['dropTime'],
          dropLink: data['dropLink'],
        );
      }).toList();
    });
  }
}
