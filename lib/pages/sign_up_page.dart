import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/components/app_buttons.dart';
import 'package:flutter_firebase_chat/components/app_text_field.dart';
import 'package:flutter_firebase_chat/pages/home_page.dart';
import 'package:flutter_firebase_chat/view_models/auth/sign_up_page_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  static const String route = "sign_up";

  @override
  Widget build(BuildContext context) {
    return Provider<SignUpPageViewModel>(
      create: (context) => SignUpPageViewModel(),
      child: Builder(
        builder: (context) {
          final viewModel = Provider.of<SignUpPageViewModel>(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("Sign Up"),
            ),
            body: _SignUpPageListeners(
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  Observer(
                    builder: (context) => AppTextField(
                      text: viewModel.nickName,
                      onChanged: viewModel.setNickName,
                      hintText: "Nick Name",
                      textInputType: TextInputType.name,
                    ),
                  ),
                  const SizedBox(height: 16),
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
                    builder: (context) => AppTextField(
                      text: viewModel.confirmPassword,
                      onChanged: viewModel.setConfirmPassword,
                      hintText: "Confirm Password",
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Observer(
                    builder: (context) => AppRaisedButton(
                      text: 'Sign up',
                      onTap: () => viewModel.doSignUp(),
                      buttonState: viewModel.inFormValid
                          ? viewModel.signUpInProgress
                              ? ButtonState.loading
                              : ButtonState.active
                          : ButtonState.inActive,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SignUpPageListeners extends StatefulWidget {
  final Widget child;

  const _SignUpPageListeners({Key key, @required this.child}) : super(key: key);

  @override
  __SignUpPageListenersState createState() => __SignUpPageListenersState();
}

class __SignUpPageListenersState extends State<_SignUpPageListeners> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final viewModel = Provider.of<SignUpPageViewModel>(
          context,
          listen: false,
        );
        viewModel.setCallBacks(
          onSignUpSuccess: () => Navigator.pushNamedAndRemoveUntil(
            context,
            HomePage.route,
            (_) => false,
          ),
          onShowMessage: (msg) {
            if (msg == null) return;
            Scaffold.of(context).showSnackBar(SnackBar(content: Text(msg)));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
