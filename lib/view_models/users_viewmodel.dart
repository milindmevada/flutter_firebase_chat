import 'package:flutter_firebase_chat/models/user_model.dart';
import 'package:flutter_firebase_chat/services/auth_service.dart';
import 'package:flutter_firebase_chat/services/users_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'users_viewmodel.g.dart';

// ignore_for_file: use_setters_to_change_properties

class UsersViewModel = _UsersViewModel with _$UsersViewModel;

abstract class _UsersViewModel with Store {
  final usersService = GetIt.I<UsersService>();
  final authService = GetIt.I<AuthService>();

  _UsersViewModel() {
    fetchAllUsers();
  }

  @observable
  ObservableList<UserModel> allUsers = ObservableList.of([]);

  @action
  Future<void> fetchAllUsers() async {
    final result = await usersService.getUsers();
    result.when(
      success: (data) {
        data.removeWhere((e) => e.id == authService.getCurrentUser().uid);
        allUsers = ObservableList.of(data);
      },
      failure: (_) => null,
    );
  }

  Future<void> logout() async {
    authService.logout();
  }
}
