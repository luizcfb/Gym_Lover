import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/chat/chat_store.dart';

class ChatPage extends StatefulWidget {
  final String title;
  const ChatPage({
    Key? key,
    this.title = 'ChatPage',
  }) : super(key: key);
  @override
  ChatPageState createState() => ChatPageState();
}

class ChatPageState extends ModularState<ChatPage, ChatStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
