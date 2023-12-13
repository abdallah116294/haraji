import 'package:haraji/domain/entity/message_entity.dart';

class MessageModel extends MessageEntity {
  MessageModel(
      {required super.id,
      required super.audio,
      required super.message,
      required super.response});
  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
        id: json['id'],
        audio: json['audio'],
        message: json['message'],
        response: json['response']);
  }
}
