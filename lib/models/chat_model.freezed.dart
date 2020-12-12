// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
class _$ChatModelTearOff {
  const _$ChatModelTearOff();

// ignore: unused_element
  _ChatModel call({String text, DateTime sendAt, String author}) {
    return _ChatModel(
      text: text,
      sendAt: sendAt,
      author: author,
    );
  }

// ignore: unused_element
  ChatModel fromJson(Map<String, Object> json) {
    return ChatModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ChatModel = _$ChatModelTearOff();

/// @nodoc
mixin _$ChatModel {
  String get text;
  DateTime get sendAt;
  String get author;

  Map<String, dynamic> toJson();
  $ChatModelCopyWith<ChatModel> get copyWith;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res>;
  $Res call({String text, DateTime sendAt, String author});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res> implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  final ChatModel _value;
  // ignore: unused_field
  final $Res Function(ChatModel) _then;

  @override
  $Res call({
    Object text = freezed,
    Object sendAt = freezed,
    Object author = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
      sendAt: sendAt == freezed ? _value.sendAt : sendAt as DateTime,
      author: author == freezed ? _value.author : author as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$ChatModelCopyWith(
          _ChatModel value, $Res Function(_ChatModel) then) =
      __$ChatModelCopyWithImpl<$Res>;
  @override
  $Res call({String text, DateTime sendAt, String author});
}

/// @nodoc
class __$ChatModelCopyWithImpl<$Res> extends _$ChatModelCopyWithImpl<$Res>
    implements _$ChatModelCopyWith<$Res> {
  __$ChatModelCopyWithImpl(_ChatModel _value, $Res Function(_ChatModel) _then)
      : super(_value, (v) => _then(v as _ChatModel));

  @override
  _ChatModel get _value => super._value as _ChatModel;

  @override
  $Res call({
    Object text = freezed,
    Object sendAt = freezed,
    Object author = freezed,
  }) {
    return _then(_ChatModel(
      text: text == freezed ? _value.text : text as String,
      sendAt: sendAt == freezed ? _value.sendAt : sendAt as DateTime,
      author: author == freezed ? _value.author : author as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ChatModel implements _ChatModel {
  _$_ChatModel({this.text, this.sendAt, this.author});

  factory _$_ChatModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatModelFromJson(json);

  @override
  final String text;
  @override
  final DateTime sendAt;
  @override
  final String author;

  @override
  String toString() {
    return 'ChatModel(text: $text, sendAt: $sendAt, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatModel &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.sendAt, sendAt) ||
                const DeepCollectionEquality().equals(other.sendAt, sendAt)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(sendAt) ^
      const DeepCollectionEquality().hash(author);

  @override
  _$ChatModelCopyWith<_ChatModel> get copyWith =>
      __$ChatModelCopyWithImpl<_ChatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatModelToJson(this);
  }
}

abstract class _ChatModel implements ChatModel {
  factory _ChatModel({String text, DateTime sendAt, String author}) =
      _$_ChatModel;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$_ChatModel.fromJson;

  @override
  String get text;
  @override
  DateTime get sendAt;
  @override
  String get author;
  @override
  _$ChatModelCopyWith<_ChatModel> get copyWith;
}
