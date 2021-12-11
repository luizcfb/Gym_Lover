import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'chat_store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;
abstract class _ChatStoreBase with Store {

  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
}