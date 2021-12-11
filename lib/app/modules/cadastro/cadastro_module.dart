import 'package:gym_lover/app/modules/cadastro/cadastro_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/cadastro/pages/cadastro_aluno/cadastro_aluno_page.dart';
import 'package:gym_lover/app/modules/cadastro/pages/cadastro_aluno/cadastro_aluno_store.dart';
import 'package:gym_lover/app/modules/cadastro/pages/cadastro_instrutor/cadastro_instrutor_page.dart';
import 'package:gym_lover/app/modules/cadastro/pages/cadastro_instrutor/cadastro_instrutor_store.dart';

class CadastroModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroAlunoStore()),
    Bind.lazySingleton((i) => CadastroInstrutorStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => CadastroPage(), children: [
      ChildRoute("/cadastro_instrutor",  child: (context, args) =>  CadastroInstructorPage()),
      ChildRoute("/cadastro_aluno",  child: (context, args) =>  CadastroAlunoPage())
    ]),
  ];
}
