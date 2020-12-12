// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsersViewModel on _UsersViewModel, Store {
  final _$allUsersAtom = Atom(name: '_UsersViewModel.allUsers');

  @override
  ObservableList<UserModel> get allUsers {
    _$allUsersAtom.reportRead();
    return super.allUsers;
  }

  @override
  set allUsers(ObservableList<UserModel> value) {
    _$allUsersAtom.reportWrite(value, super.allUsers, () {
      super.allUsers = value;
    });
  }

  final _$fetchAllUsersAsyncAction =
      AsyncAction('_UsersViewModel.fetchAllUsers');

  @override
  Future<void> fetchAllUsers() {
    return _$fetchAllUsersAsyncAction.run(() => super.fetchAllUsers());
  }

  @override
  String toString() {
    return '''
allUsers: ${allUsers}
    ''';
  }
}
