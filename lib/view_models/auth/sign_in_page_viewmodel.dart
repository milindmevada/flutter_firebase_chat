import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_chat/services/auth_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'sign_in_page_viewmodel.g.dart';

// ignore_for_file: use_setters_to_change_properties

class SignInPageViewModel = _SignInPageViewModel with _$SignInPageViewModel;

abstract class _SignInPageViewModel with Store {
  final authService = GetIt.I<AuthService>();

  @observable
  String email;

  @action
  void setEmail(String input) => email = input;

  @observable
  String password;

  @action
  void setPassword(String text) => password = text;

  @computed
  bool get inFormValid {
    return email != null &&
        email.isNotEmpty &&
        password != null &&
        password.isNotEmpty;
  }

  ValueChanged<String> _onShowMessage;
  VoidCallback _onSignInSuccess;

  void setCallBacks({
    ValueChanged<String> onShowMessage,
    VoidCallback onSignInSuccess,
  }) {
    _onShowMessage = onShowMessage;
    _onSignInSuccess = onSignInSuccess;
  }

  @observable
  bool signInProgress = false;

  @action
  Future<void> doSignIn() async {
    signInProgress = true;
    final result = await authService.signIn(
      email: email,
      password: password,
    );

    result.when(
      success: (data) => _onSignInSuccess?.call(),
      failure: (err) => _onShowMessage?.call(err),
    );
    signInProgress = false;
  }
}
