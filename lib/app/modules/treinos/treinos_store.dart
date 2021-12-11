import 'package:flutter/cupertino.dart';
import 'package:gym_lover/app/shared/models/exercicio_modal.dart';
import 'package:mobx/mobx.dart';

part 'treinos_store.g.dart';

class TreinosStore = _TreinosStoreBase with _$TreinosStore;
abstract class _TreinosStoreBase with Store {

  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
  // final width = MediaQuery.of(context).size.width;
  // Auth auth = Provider.of(context, listen: false);
  // Validacao validacao = new Validacao();

  ObservableList<ExercicioModal> exercicios = ObservableList.of([]);
}