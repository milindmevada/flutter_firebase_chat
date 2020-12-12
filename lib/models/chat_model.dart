import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';

part 'chat_model.g.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  factory ChatModel({
    String text,
    DateTime sendAt,
    String author,
  }) = _ChatModel;

  @JsonSerializable(explicitToJson: true)
  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
