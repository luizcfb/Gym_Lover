import 'package:flutter/cupertino.dart';
import 'package:gym_lover/models/exercicio_modal.dart';

class TreinoController extends ChangeNotifier {
  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
  // final width = MediaQuery.of(context).size.width;
  // Auth auth = Provider.of(context, listen: false);
  // Validacao validacao = new Validacao();

  List<ExercicioModal> exercicios = [];
}
