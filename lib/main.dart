import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/di.dart';
import 'package:flutter_firebase_chat/pages/chat_detail_page.dart';
import 'package:flutter_firebase_chat/pages/users_page.dart';
import 'package:flutter_firebase_chat/pages/sign_in_page.dart';
import 'package:flutter_firebase_chat/pages/sign_up_page.dart';
import 'package:flutter_firebase_chat/pages/splash_page.dart';

void main() {
  setUpDi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'FirebaseChat',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            routes: {
              SplashPage.route: (context) => SplashPage(),
              SignUpPage.route: (context) => SignUpPage(),
              SignInPage.route: (context) => SignInPage(),
              UsersPage.route: (context) => UsersPage(),
              ChatDetailPage.route: (context) => ChatDetailPage(),
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
