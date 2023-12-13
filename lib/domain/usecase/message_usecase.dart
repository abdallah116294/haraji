import 'package:haraji/domain/entity/message_entity.dart';
import 'package:haraji/domain/repository/message_repository.dart';

class GetMessageUseCase {
  MessageRepository messageRepository;
  GetMessageUseCase({required this.messageRepository});
  Future<List<MessageEntity>> call() => messageRepository.getMessage();
}
