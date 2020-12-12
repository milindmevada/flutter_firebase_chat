import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_chat/models/result.dart';
import 'package:flutter_firebase_chat/models/user_model.dart';
import 'package:get_it/get_it.dart';

class UsersService {
  final fireStore = GetIt.I<FirebaseFirestore>();

  Future<Result<void, List<UserModel>>> getUsers() async {
    try {
      final userCollection = await fireStore.collection("users").get();
      final users =
          userCollection.docs.map((e) => UserModel.fromJson(e.data())).toList();
      return Result.success(users);
    } catch (_) {
      return Result.failure();
    }
  }
}
