// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_details_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatDetailsViewModel on _ChatDetailsViewModel, Store {
  final _$currentChatUserAtom =
      Atom(name: '_ChatDetailsViewModel.currentChatUser');

  @override
  ChatUser get currentChatUser {
    _$currentChatUserAtom.reportRead();
    return super.currentChatUser;
  }

  @override
  set currentChatUser(ChatUser value) {
    _$currentChatUserAtom.reportWrite(value, super.currentChatUser, () {
      super.currentChatUser = value;
    });
  }

  final _$otherChatUserAtom = Atom(name: '_ChatDetailsViewModel.otherChatUser');

  @override
  ChatUser get otherChatUser {
    _$otherChatUserAtom.reportRead();
    return super.otherChatUser;
  }

  @override
  set otherChatUser(ChatUser value) {
    _$otherChatUserAtom.reportWrite(value, super.otherChatUser, () {
      super.otherChatUser = value;
    });
  }

  final _$messagesAtom = Atom(name: '_ChatDetailsViewModel.messages');

  @override
  ObservableList<ChatMessage> get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(ObservableList<ChatMessage> value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  final _$fetchMessagesAsyncAction =
      AsyncAction('_ChatDetailsViewModel.fetchMessages');

  @override
  Future<void> fetchMessages() {
    return _$fetchMessagesAsyncAction.run(() => super.fetchMessages());
  }

  final _$_ChatDetailsViewModelActionController =
      ActionController(name: '_ChatDetailsViewModel');

  @override
  void sendMessage(ChatMessage chatMessage) {
    final _$actionInfo = _$_ChatDetailsViewModelActionController.startAction(
        name: '_ChatDetailsViewModel.sendMessage');
    try {
      return super.sendMessage(chatMessage);
    } finally {
      _$_ChatDetailsViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentChatUser: ${currentChatUser},
otherChatUser: ${otherChatUser},
messages: ${messages}
    ''';
  }
}
