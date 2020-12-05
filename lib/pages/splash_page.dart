import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/pages/home_page.dart';
import 'package:flutter_firebase_chat/pages/sign_in_page.dart';
import 'package:flutter_firebase_chat/view_models/splash_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  static const String route = "/";

  @override
  Widget build(BuildContext context) {
    return Provider<SplashViewModel>(
      create: (context) => SplashViewModel(),
      child: Scaffold(
        body: _SplashPageListeners(
          child: Center(
            child: Text('Welcome to Flutter Chat App'),
          ),
        ),
      ),
    );
  }
}

class _SplashPageListeners extends StatefulWidget {
  final Widget child;

  const _SplashPageListeners({Key key, @required this.child}) : super(key: key);

  @override
  __SplashPageListenersState createState() => __SplashPageListenersState();
}

class __SplashPageListenersState extends State<_SplashPageListeners> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final viewModel = Provider.of<SplashViewModel>(context, listen: false);
      viewModel.setCallBack(
        onSessionAvailable: () {
          if (!mounted) return;
          Navigator.pushNamedAndRemoveUntil(
            context,
            HomePage.route,
            (route) => false,
          );
        },
        onSessionNotAvailable: () {
          if (!mounted) return;
          Navigator.pushNamedAndRemoveUntil(
            context,
            SignInPage.route,
            (route) => false,
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
