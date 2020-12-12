import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_firebase_chat/models/result.dart';
import 'package:flutter_firebase_chat/models/user_model.dart';
import 'package:get_it/get_it.dart';

class FaceBookAuthService {
  final firebaseAuth = GetIt.I<FirebaseAuth>();
  final fireStore = GetIt.I<FirebaseFirestore>();
  final _collectionUsers = 'users';

  Future<Result<void, void>> signInWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();
      final FacebookAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(result.token);
      await firebaseAuth.signInWithCredential(facebookAuthCredential);
      final userData = await FacebookAuth.instance.getUserData();
      await firebaseAuth.currentUser
          .updateProfile(displayName: userData['name']);
      await fireStore
          .collection(_collectionUsers)
          .doc(firebaseAuth.currentUser.uid)
          .set(
            UserModel(
              id: firebaseAuth.currentUser.uid,
              name: userData['name'],
            ).toJson(),
          );
      await firebaseAuth.currentUser.reload();
      return Result.success();
    } catch (_) {
      return Result.failure();
    }
  }
}
