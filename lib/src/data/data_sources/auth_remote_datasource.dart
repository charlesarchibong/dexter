import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dexter_health/core/constants/firebase_collections.dart';
import 'package:dexter_health/core/network/network_info.dart';
import 'package:dexter_health/core/utils/internet_safe_runner.dart';
import 'package:dexter_health/src/data/models/nurse_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDatasource {
  /// [login] is used to login the user
  /// [email] is the email of the user
  /// [password] is the password of the user
  /// returns [NurseModel] if the user is logged in successfully
  Future<NurseModel> login(String email, String password);

  /// [getCurrentUser] is used to get the current user
  /// [id] is the id of the user
  /// returns [NurseModel] if the user is found
  /// returns [null] if the user is not found
  Future<NurseModel?> getCurrentUser({String? id});
}

@LazySingleton(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  AuthRemoteDatasourceImpl({
    required this.firebaseFirestore,
    required this.firebaseAuth,
    required this.networkInfo,
  }) {
    internetSafeRunner = InternetSafeRunner(networkInfo);
  }

  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;
  final NetworkInfo networkInfo;
  late final InternetSafeRunner internetSafeRunner;

  CollectionReference get nurseCollection => firebaseFirestore.collection(FirebaseCollection.nurses);

  @override
  Future<NurseModel?> getCurrentUser({String? id}) async {
    return internetSafeRunner<NurseModel?>(
      safeCallback: () async {
        if (firebaseAuth.currentUser == null && id == null) {
          return null;
        }
        final nurseDocumentSnapshot = await nurseCollection.doc(id ?? firebaseAuth.currentUser!.uid).get();
        if (nurseDocumentSnapshot.exists) {
          final jsonData = nurseDocumentSnapshot.data() as Map<String, dynamic>;
          return NurseModel.fromJson(jsonData);
        }
        return null;
      },
    );
  }

  @override
  Future<NurseModel> login(String email, String password) async {
    return internetSafeRunner<NurseModel>(safeCallback: () async {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return (await getCurrentUser(id: userCredential.user!.uid))!;
    });
  }
}
