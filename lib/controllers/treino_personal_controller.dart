import 'package:flutter/foundation.dart';
import 'package:gym_lover/models/exercicio_modal.dart';
import 'package:gym_lover/services/databases_services.dart';

class TreinoPersonalController extends ChangeNotifier {
  TreinoPersonalController();

  List<ExercicioModal> exercicios = [];

  bool loading = false;

  final DatabaseServices databaseServices = DatabaseServices("exercicios");

  Future<List<ExercicioModal>> fetchData() async {
    var result = await databaseServices.getDataCollection();
    final exercicios = result.docs.map((doc) => ExercicioModal.fromMap(doc.data())).toList();
    return exercicios;
  }
}
