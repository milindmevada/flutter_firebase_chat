import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_chat/models/chat_model.dart';
import 'package:get_it/get_it.dart';

class ChatService {
  final fireStore = GetIt.I<FirebaseFirestore>();
  final String currentUserId;
  final String otherUserId;
  static const String _collectionChatsRooms = 'chat_rooms';
  static const String _collectionChats = 'chat_rooms';

  ChatService({
    @required this.currentUserId,
    @required this.otherUserId,
  });

  Future<void> sendMessage({
    @required ChatModel chatModel,
  }) async {
    final collection = fireStore.collection(_collectionChatsRooms);
    await collection
        .doc(channelId())
        .collection(_collectionChats)
        .add(chatModel.toJson());
  }

  Stream<List<ChatModel>> listenForNewMessages(ChatModel lastMessage) {
    final collection = fireStore
        .collection("$_collectionChatsRooms/${channelId()}/$_collectionChats")
        .orderBy('sendAt', descending: true)
        .endBefore([lastMessage?.sendAt]).snapshots();

    return collection.map(
      (e) => e.docChanges
          .where((e) => e.type == DocumentChangeType.added)
          .map((e) => e.doc)
          .map((e) => ChatModel.fromJson(e.data()))
          .toList(),
    );
  }

  Future<List<ChatModel>> earlierMessages() async {
    final collection = await fireStore
        .collection("$_collectionChatsRooms/${channelId()}/$_collectionChats")
        .get();
    return collection.docs.map((e) => ChatModel.fromJson(e.data())).toList();
  }

  String channelId() {
    final users = [currentUserId, otherUserId];
    users.sort((a, b) => a.compareTo(b));
    return users.join("_");
  }
}
