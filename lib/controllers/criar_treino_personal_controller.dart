import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym_lover/models/exercicio_modal.dart';
import 'package:gym_lover/services/databases_services.dart';
import 'package:gym_lover/views/treino_personal.dart';
import 'package:uuid/uuid.dart';

class CriarTreinoPersonalController extends ChangeNotifier {
  CriarTreinoPersonalController();
  final nameController = TextEditingController();
  final seriesController = TextEditingController();

  bool loading = false;

  final DatabaseServices databaseServices = DatabaseServices("exercicios");

  void save(BuildContext context) async {
    final exercicio = ExercicioModal(
      id: Uuid().v4(),
      nome: nameController.text,
      series: seriesController.text,
    );
    await databaseServices.addDocument(exercicio.toMap()).then((value) {
      Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) {
            return TreinoPersonal();
          },
        ),
      );
    });
  }
}
