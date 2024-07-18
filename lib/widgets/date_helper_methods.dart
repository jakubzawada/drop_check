import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

String formatDropTime(Timestamp timestamp) {
  DateTime dateTime = timestamp.toDate();
  DateFormat formatter = DateFormat('dd.MM | HH:mm');
  return formatter.format(dateTime);
}
