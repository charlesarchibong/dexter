import 'package:cloud_firestore/cloud_firestore.dart';

DateTime firestoreDateTimeFromJson(dynamic value) {
  return value != null && value is Timestamp ? value.toDate() : value;
}

dynamic firestoreDateTimeToJson(dynamic value) => value;
