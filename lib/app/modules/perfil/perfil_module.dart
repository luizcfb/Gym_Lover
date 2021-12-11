import 'package:gym_lover/app/modules/perfil/perfil_page.dart';
import 'package:gym_lover/app/modules/perfil/perfil_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PerfilModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PerfilStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => PerfilPage()),
  ];
}
