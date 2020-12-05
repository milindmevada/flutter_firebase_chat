// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpPageViewModel on _SignUpPageViewModel, Store {
  Computed<bool> _$inFormValidComputed;

  @override
  bool get inFormValid =>
      (_$inFormValidComputed ??= Computed<bool>(() => super.inFormValid,
              name: '_SignUpPageViewModel.inFormValid'))
          .value;

  final _$nickNameAtom = Atom(name: '_SignUpPageViewModel.nickName');

  @override
  String get nickName {
    _$nickNameAtom.reportRead();
    return super.nickName;
  }

  @override
  set nickName(String value) {
    _$nickNameAtom.reportWrite(value, super.nickName, () {
      super.nickName = value;
    });
  }

  final _$emailAtom = Atom(name: '_SignUpPageViewModel.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpPageViewModel.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$confirmPasswordAtom =
      Atom(name: '_SignUpPageViewModel.confirmPassword');

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  final _$signUpInProgressAtom =
      Atom(name: '_SignUpPageViewModel.signUpInProgress');

  @override
  bool get signUpInProgress {
    _$signUpInProgressAtom.reportRead();
    return super.signUpInProgress;
  }

  @override
  set signUpInProgress(bool value) {
    _$signUpInProgressAtom.reportWrite(value, super.signUpInProgress, () {
      super.signUpInProgress = value;
    });
  }

  final _$doSignUpAsyncAction = AsyncAction('_SignUpPageViewModel.doSignUp');

  @override
  Future<void> doSignUp() {
    return _$doSignUpAsyncAction.run(() => super.doSignUp());
  }

  final _$_SignUpPageViewModelActionController =
      ActionController(name: '_SignUpPageViewModel');

  @override
  void setNickName(String name) {
    final _$actionInfo = _$_SignUpPageViewModelActionController.startAction(
        name: '_SignUpPageViewModel.setNickName');
    try {
      return super.setNickName(name);
    } finally {
      _$_SignUpPageViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String input) {
    final _$actionInfo = _$_SignUpPageViewModelActionController.startAction(
        name: '_SignUpPageViewModel.setEmail');
    try {
      return super.setEmail(input);
    } finally {
      _$_SignUpPageViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String text) {
    final _$actionInfo = _$_SignUpPageViewModelActionController.startAction(
        name: '_SignUpPageViewModel.setPassword');
    try {
      return super.setPassword(text);
    } finally {
      _$_SignUpPageViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmPassword(String password) {
    final _$actionInfo = _$_SignUpPageViewModelActionController.startAction(
        name: '_SignUpPageViewModel.setConfirmPassword');
    try {
      return super.setConfirmPassword(password);
    } finally {
      _$_SignUpPageViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nickName: ${nickName},
email: ${email},
password: ${password},
confirmPassword: ${confirmPassword},
signUpInProgress: ${signUpInProgress},
inFormValid: ${inFormValid}
    ''';
  }
}
