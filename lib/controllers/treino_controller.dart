import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym_lover/models/exercicio_modal.dart';
import 'package:gym_lover/models/treino_model.dart';
import 'package:gym_lover/services/databases_services.dart';
import 'package:uuid/uuid.dart';

class TreinoController extends ChangeNotifier {
  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
  // final width = MediaQuery.of(context).size.width;
  // Auth auth = Provider.of(context, listen: false);
  // Validacao validacao = new Validacao();

  List<ExercicioModal> exercicios = [];
}
