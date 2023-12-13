import 'package:haraji/data/data_source/local_data_source.dart';
import 'package:haraji/domain/entity/message_entity.dart';
import 'package:haraji/domain/repository/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  LocatDataSource localDataSourceImpl;
  MessageRepositoryImpl({required this.localDataSourceImpl});
  @override
  Future<List<MessageEntity>> getMessage() async {
    var response = await localDataSourceImpl.getMessage();
    return response;
  }
}
