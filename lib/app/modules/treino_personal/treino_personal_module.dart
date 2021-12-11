import 'package:gym_lover/app/modules/treino_personal/treino_personal_page.dart';
import 'package:gym_lover/app/modules/treino_personal/treino_personal_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TreinoPersonalModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TreinoPersonalStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => TreinoPersonalPage()),
  ];
}
