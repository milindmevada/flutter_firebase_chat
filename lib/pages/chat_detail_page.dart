import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/models/user_model.dart';
import 'package:flutter_firebase_chat/view_models/chat/chat_details_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ChatDetailPage extends StatelessWidget {
  static const String route = 'chat_details';

  @override
  Widget build(BuildContext context) {
    final otherUser =
        (ModalRoute.of(context).settings.arguments as ChatDetailsPageArgs)
            .otherUser;
    return Provider<ChatDetailsViewModel>(
      create: (context) => ChatDetailsViewModel(otherUser),
      child: Builder(builder: (context) {
        final vm = Provider.of<ChatDetailsViewModel>(context);
        return Scaffold(
          appBar: AppBar(title: Text(vm.otherUser.name)),
          body: Observer(
            builder: (context) => DashChat(
              messages: vm.messages,
              onSend: vm.sendMessage,
              user: vm.currentChatUser,
              inverted: true,
              onLoadEarlier: () => null,
              dateFormat: DateFormat("dd-MMM-yy"),
              timeFormat: DateFormat("hh:mm a"),
            ),
          ),
        );
      }),
    );
  }
}

class ChatDetailsPageArgs {
  final UserModel otherUser;

  ChatDetailsPageArgs(this.otherUser);
}
