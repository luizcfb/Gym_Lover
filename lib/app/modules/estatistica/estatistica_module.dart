import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/estatistica/estatistica_page.dart';
import 'package:gym_lover/app/modules/estatistica/estatistica_store.dart';

class EstatisticaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EstatisticaStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => EstatisticaPage()),
  ];
}
