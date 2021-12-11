import 'package:flutter/cupertino.dart';
import 'package:gym_lover/app/shared/models/exercicio_modal.dart';
import 'package:mobx/mobx.dart';

part 'treino_personal_store.g.dart';

class TreinoPersonalStore = _TreinoPersonalStoreBase with _$TreinoPersonalStore;
abstract class _TreinoPersonalStoreBase with Store {

  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
  // final width = MediaQuery.of(context).size.width;
  // Auth auth = Provider.of(context, listen: false);
  // Validacao validacao = new Validacao();

  ObservableList<ExercicioModal> exercicios = ObservableList.of([]);
}