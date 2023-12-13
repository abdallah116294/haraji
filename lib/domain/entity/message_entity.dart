import 'package:equatable/equatable.dart';

class MessageEntity extends Equatable {
  int? id;
  String? audio;
  String? message;
  String? response;
  MessageEntity(
      {required this.id,
      required this.audio,
      required this.message,
      required this.response});
  @override
  // TODO: implement props
  List<Object?> get props =>[
    id,
    audio,
    message,
    response,
  ];
}
