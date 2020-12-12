// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInPageViewModel on _SignInPageViewModel, Store {
  Computed<bool> _$inFormValidComputed;

  @override
  bool get inFormValid =>
      (_$inFormValidComputed ??= Computed<bool>(() => super.inFormValid,
              name: '_SignInPageViewModel.inFormValid'))
          .value;

  final _$emailAtom = Atom(name: '_SignInPageViewModel.email');

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

  final _$passwordAtom = Atom(name: '_SignInPageViewModel.password');

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

  final _$signInProgressAtom =
      Atom(name: '_SignInPageViewModel.signInProgress');

  @override
  bool get signInProgress {
    _$signInProgressAtom.reportRead();
    return super.signInProgress;
  }

  @override
  set signInProgress(bool value) {
    _$signInProgressAtom.reportWrite(value, super.signInProgress, () {
      super.signInProgress = value;
    });
  }

  final _$doSignInAsyncAction = AsyncAction('_SignInPageViewModel.doSignIn');

  @override
  Future<void> doSignIn() {
    return _$doSignInAsyncAction.run(() => super.doSignIn());
  }

  final _$signInWithFBAsyncAction =
      AsyncAction('_SignInPageViewModel.signInWithFB');

  @override
  Future<void> signInWithFB() {
    return _$signInWithFBAsyncAction.run(() => super.signInWithFB());
  }

  final _$_SignInPageViewModelActionController =
      ActionController(name: '_SignInPageViewModel');

  @override
  void setEmail(String input) {
    final _$actionInfo = _$_SignInPageViewModelActionController.startAction(
        name: '_SignInPageViewModel.setEmail');
    try {
      return super.setEmail(input);
    } finally {
      _$_SignInPageViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String text) {
    final _$actionInfo = _$_SignInPageViewModelActionController.startAction(
        name: '_SignInPageViewModel.setPassword');
    try {
      return super.setPassword(text);
    } finally {
      _$_SignInPageViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
signInProgress: ${signInProgress},
inFormValid: ${inFormValid}
    ''';
  }
}
