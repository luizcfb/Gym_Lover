import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym_lover/models/Alunos_modal.dart';

class aluno_instrutorController extends ChangeNotifier {
  List<alunosModal> alunos = [
    alunosModal(
      nome: "Laura",
      image: "assets/image/avatar1.png",
    ),
    alunosModal(
      nome: "Ricardo",
      image: "assets/image/avatar2.png",
    ),
    alunosModal(
      nome: "Juliet",
      image: "assets/image/avatar3.png",
    ),
    alunosModal(
      nome: "scarlet",
      image: "assets/image/avatar4.png",
    )
  ];

  // final width = MediaQuery.of(context).size.width;
  // Auth auth = Provider.of(context, listen: false);
  // Validacao validacao = new Validacao();

  void limparalunos() {
    alunos.clear();
    notifyListeners();
  }
}
