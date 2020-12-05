import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_chat/services/auth_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'splash_viewmodel.g.dart';

// ignore_for_file: use_setters_to_change_properties

class SplashViewModel = _SplashViewModel with _$SplashViewModel;

abstract class _SplashViewModel with Store {
  final authService = GetIt.I<AuthService>();

  _SplashViewModel() {
    checkSession();
  }

  VoidCallback _onSessionAvailable;
  VoidCallback _onSessionNotAvailable;

  void setCallBack({
    VoidCallback onSessionAvailable,
    VoidCallback onSessionNotAvailable,
  }) {
    _onSessionAvailable = onSessionAvailable;
    _onSessionNotAvailable = onSessionNotAvailable;
  }

  Future<void> checkSession() async {
    await Future.delayed(Duration(seconds: 1));
    final user = authService.getCurrentUser();
    if (user != null) {
      _onSessionAvailable?.call();
    } else {
      _onSessionNotAvailable?.call();
    }
  }
}
