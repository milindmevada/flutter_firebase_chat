import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  static const String route = 'chat_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Milind")),
      body: DashChat(
        messages: [
          ChatMessage(
            text: "Hello",
            user: ChatUser(
              name: "Hey"
            ),
          )
        ],
        onSend: (_) => null,
        user: ChatUser(
          name: "Milind",
        ),
      ),
    );
  }
}
