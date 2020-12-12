import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_chat/models/chat_model.dart';
import 'package:get_it/get_it.dart';

class ChatService {
  final fireStore = GetIt.I<FirebaseFirestore>();
  final String currentUserId;
  final String otherUserId;
  static const String _collectionChats = 'chats';

  ChatService({
    @required this.currentUserId,
    @required this.otherUserId,
  });

  Future<void> sendMessage({
    @required ChatModel chatModel,
  }) async {
    final collection = fireStore.collection(_collectionChats);
    await collection.add(chatModel.toJson());
  }

  Stream<List<ChatModel>> listenForNewMessages() {
    final collection = fireStore.collection(_collectionChats);
    return collection.snapshots().map((value) => value.docs).map(
          (event) => event.map((e) => ChatModel.fromJson(e.data())).toList(),
        );
  }
}
