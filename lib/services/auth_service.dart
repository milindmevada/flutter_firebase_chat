import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_chat/models/result.dart';
import 'package:flutter_firebase_chat/models/user_model.dart';
import 'package:get_it/get_it.dart';

class AuthService {
  final firebaseAuth = GetIt.I<FirebaseAuth>();
  final fireStore = GetIt.I<FirebaseFirestore>();
  final _collectionUsers = 'users';

  User getCurrentUser() => firebaseAuth.currentUser;

  Future<Result<String, User>> signUp({
    @required String nickname,
    @required String email,
    @required String password,
  }) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await firebaseAuth.currentUser.updateProfile(displayName: nickname);
      await fireStore
          .collection(_collectionUsers)
          .doc(firebaseAuth.currentUser.uid)
          .set(
            UserModel(
              id: firebaseAuth.currentUser.uid,
              name: nickname,
            ).toJson(),
          );
      await firebaseAuth.currentUser.reload();
      return Result.success(firebaseAuth.currentUser);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Result.failure('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return Result.failure('The account already exists for that email.');
      } else {
        return Result.failure('Failed to Sign-Up.');
      }
    } catch (e) {
      return Result.failure('Failed to Sign-Up.');
    }
  }

  Future<Result<String, User>> signIn({
    @required String email,
    @required String password,
  }) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await firebaseAuth.currentUser.reload();
      return Result.success(firebaseAuth.currentUser);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Result.failure('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return Result.failure('Wrong password provided for that user.');
      } else {
        return Result.failure('Failed to Sign-In.');
      }
    } catch (e) {
      return Result.failure('Failed to Sign-In.');
    }
  }

  Future<void> logout() async {
    await firebaseAuth.signOut();
  }
}
