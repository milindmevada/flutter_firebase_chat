import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String route = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
