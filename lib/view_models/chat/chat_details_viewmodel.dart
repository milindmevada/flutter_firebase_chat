import 'package:dash_chat/dash_chat.dart';
import 'package:flutter_firebase_chat/models/chat_model.dart';
import 'package:flutter_firebase_chat/models/user_model.dart';
import 'package:flutter_firebase_chat/services/auth_service.dart';
import 'package:flutter_firebase_chat/services/chat_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'chat_details_viewmodel.g.dart';

// ignore_for_file: use_setters_to_change_properties

class ChatDetailsViewModel = _ChatDetailsViewModel with _$ChatDetailsViewModel;

abstract class _ChatDetailsViewModel with Store {
  final authService = GetIt.I<AuthService>();
  ChatService chatService;
  final UserModel otherUser;

  _ChatDetailsViewModel(this.otherUser) {
    chatService = ChatService(
      currentUserId: authService.getCurrentUser().uid,
      otherUserId: otherUser.id,
    );
    currentChatUser = ChatUser(
      name: authService.getCurrentUser().displayName,
      uid: authService.getCurrentUser().uid,
    );
    otherChatUser = ChatUser(
      name: otherUser.name,
      uid: otherUser.id,
    );

    fetchMessages();
  }

  @observable
  ChatUser currentChatUser;

  @observable
  ChatUser otherChatUser;

  @observable
  ObservableList<ChatMessage> messages = ObservableList.of([]);

  @action
  Future<void> fetchMessages() async {
    ChatModel lastMessage;
    try {
      final lastChat = messages.first;
      lastMessage = ChatModel(
        sendAt: lastChat.createdAt,
        author: lastChat.user.uid,
        text: lastChat.text,
      );
    } catch (_) {}
    chatService.listenForNewMessages(lastMessage).listen((event) {
      messages = ObservableList.of(
        [
          ...event.map(_toChatMessage),
          ...messages,
        ],
      );
    });
  }

  @action
  void sendMessage(ChatMessage chatMessage) {
    chatService.sendMessage(
      chatModel: ChatModel(
        text: chatMessage.text,
        author: chatMessage.user.uid,
        sendAt: chatMessage.createdAt,
      ),
    );
  }

  ChatMessage _toChatMessage(ChatModel chatModel) {
    return ChatMessage(
      id: chatModel.sendAt.millisecondsSinceEpoch.toString(),
      text: chatModel.text,
      user: chatModel.author == currentChatUser.uid
          ? currentChatUser
          : otherChatUser,
      createdAt: chatModel.sendAt,
    );
  }
}
