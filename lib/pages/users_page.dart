import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/pages/chat_detail_page.dart';
import 'package:flutter_firebase_chat/utils/string_utils.dart';
import 'package:flutter_firebase_chat/view_models/users_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class UsersPage extends StatelessWidget {
  static const String route = "users";

  @override
  Widget build(BuildContext context) {
    return Provider<UsersViewModel>(
      create: (context) => UsersViewModel(),
      child: Builder(builder: (context) {
        final vm = Provider.of<UsersViewModel>(context);
        return Scaffold(
          appBar: AppBar(title: Text("Messages")),
          body: Observer(
            builder: (context) => ListView.separated(
              itemCount: vm.allUsers.length,
              separatorBuilder: (context, index) {
                return Container(
                  height: 1,
                  color: Colors.grey,
                );
              },
              itemBuilder: (context, index) {
                final user = vm.allUsers[index];
                return ListTile(
                  onTap: () => Navigator.pushNamed(
                    context,
                    ChatDetailPage.route,
                  ),
                  leading: CircleAvatar(child: Text(user.name.toInitial())),
                  title: Text(user.name),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}