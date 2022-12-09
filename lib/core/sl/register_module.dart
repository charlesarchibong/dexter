import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

/// [RegisterModule] is used to register modules(for third party dependencies)
@module
abstract class RegisterModule {
  InternetConnectionChecker get internetConnectionChecker => InternetConnectionChecker();
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
