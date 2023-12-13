import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:haraji/data/model/message_model.dart';

abstract class LocatDataSource {
  Future<List<MessageModel>> getMessage();
}

class LocalDataSourceImpl implements LocatDataSource {
  @override
  Future<List<MessageModel>> getMessage() async {
    final messagedata = await rootBundle.loadString("assets/haraji.json");
    final messageList = json.decode(messagedata) as List<dynamic>;
    return messageList.map((e) => MessageModel.fromJson(e)).toList();
  }
}
