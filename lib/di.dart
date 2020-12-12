import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_chat/services/auth_service.dart';
import 'package:flutter_firebase_chat/services/users_service.dart';
import 'package:get_it/get_it.dart';

void setUpDi() {
  GetIt.I.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  GetIt.I.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  GetIt.I.registerLazySingleton<AuthService>(() => AuthService());
  GetIt.I.registerLazySingleton<UsersService>(() => UsersService());
}
