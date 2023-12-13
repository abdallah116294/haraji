import 'package:haraji/domain/entity/message_entity.dart';

abstract class MessageRepository {
  Future<List<MessageEntity>> getMessage();
}
