import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/components/app_buttons.dart';
import 'package:flutter_firebase_chat/components/app_text_field.dart';
import 'package:flutter_firebase_chat/pages/users_page.dart';
import 'package:flutter_firebase_chat/pages/sign_up_page.dart';
import 'package:flutter_firebase_chat/view_models/auth/sign_in_page_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  static const String route = "sign_in";

  @override
  Widget build(BuildContext context) {
    return Provider<SignInPageViewModel>(
      create: (context) => SignInPageViewModel(),
      child: Builder(
        builder: (context) {
          final viewModel = Provider.of<SignInPageViewModel>(context);
          return Scaffold(
            body: _SignInPageListeners(
              child: SafeArea(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      "Sign in",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(height: 24),
                    Observer(
                      builder: (context) => AppTextField(
                        text: viewModel.email,
                        onChanged: viewModel.setEmail,
                        hintText: "Email Address",
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Observer(
                      builder: (context) => AppTextField(
                        text: viewModel.password,
                        onChanged: viewModel.setPassword,
                        hintText: "Password",
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Observer(
                      builder: (context) => AppRaisedButton(
                        text: 'Sign In',
                        onTap: () => viewModel.doSignIn(),
                        buttonState: viewModel.inFormValid
                            ? viewModel.signInProgress
                                ? ButtonState.loading
                                : ButtonState.active
                            : ButtonState.inActive,
                      ),
                    ),
                    const SizedBox(height: 16),
                    FlatButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        SignUpPage.route,
                      ),
                      child: Text("Sign up instead"),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SignInPageListeners extends StatefulWidget {
  final Widget child;

  const _SignInPageListeners({Key key, @required this.child}) : super(key: key);

  @override
  __SignInPageListenersState createState() => __SignInPageListenersState();
}

class __SignInPageListenersState extends State<_SignInPageListeners> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          final viewModel = Provider.of<SignInPageViewModel>(
            context,
            listen: false,
          );
          viewModel.setCallBacks(
            onSignInSuccess: () => Navigator.pushNamedAndRemoveUntil(
              context,
              UsersPage.route,
              (_) => false,
            ),
            onShowMessage: (msg) {
              if (msg == null) return;
              Scaffold.of(context).showSnackBar(SnackBar(content: Text(msg)));
            },
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
