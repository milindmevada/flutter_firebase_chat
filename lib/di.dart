import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_chat/services/auth_service.dart';
import 'package:get_it/get_it.dart';

void setUpDi() {
  GetIt.I.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  GetIt.I.registerLazySingleton<AuthService>(() => AuthService());
}
