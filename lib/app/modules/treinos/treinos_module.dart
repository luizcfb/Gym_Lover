import 'package:gym_lover/app/modules/treinos/treinos_page.dart';
import 'package:gym_lover/app/modules/treinos/treinos_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TreinosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TreinosStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => TreinosPage(treinoModel: args.data)),
  ];
}
