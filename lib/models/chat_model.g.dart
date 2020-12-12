// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$_$_ChatModelFromJson(Map<String, dynamic> json) {
  return _$_ChatModel(
    text: json['text'] as String,
    sendAt: json['sendAt'] == null
        ? null
        : DateTime.parse(json['sendAt'] as String),
    author: json['author'] as String,
  );
}

Map<String, dynamic> _$_$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'sendAt': instance.sendAt?.toIso8601String(),
      'author': instance.author,
    };
