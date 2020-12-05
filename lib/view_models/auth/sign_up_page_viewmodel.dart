import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_chat/services/auth_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'sign_up_page_viewmodel.g.dart';

// ignore_for_file: use_setters_to_change_properties

class SignUpPageViewModel = _SignUpPageViewModel with _$SignUpPageViewModel;

abstract class _SignUpPageViewModel with Store {
  final authService = GetIt.I<AuthService>();

  @observable
  String nickName;

  @action
  void setNickName(String name) => nickName = name;

  @observable
  String email;

  @action
  void setEmail(String input) => email = input;

  @observable
  String password;

  @action
  void setPassword(String text) => password = text;

  @observable
  String confirmPassword;

  @action
  void setConfirmPassword(String password) => confirmPassword = password;

  @computed
  bool get inFormValid {
    return nickName != null &&
        nickName.isNotEmpty &&
        email != null &&
        email.isNotEmpty &&
        password != null &&
        password.isNotEmpty &&
        confirmPassword != null &&
        confirmPassword.isNotEmpty &&
        password == confirmPassword;
  }

  ValueChanged<String> _onShowMessage;
  VoidCallback _onSignUpSuccess;

  void setCallBacks({
    ValueChanged<String> onShowMessage,
    VoidCallback onSignUpSuccess,
  }) {
    _onShowMessage = onShowMessage;
    _onSignUpSuccess = onSignUpSuccess;
  }

  @observable
  bool signUpInProgress = false;

  @action
  Future<void> doSignUp() async {
    signUpInProgress = true;
    final result = await authService.signUp(
      nickname: nickName,
      email: email,
      password: password,
    );

    result.when(
      success: (data) => _onSignUpSuccess?.call(),
      failure: (err) => _onShowMessage?.call(err),
    );
    signUpInProgress = false;
  }
}
