import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/chat/chat_page.dart';
import 'package:gym_lover/app/modules/chat/chat_store.dart';

class ChatModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ChatStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ChatPage()),
  ];
}
