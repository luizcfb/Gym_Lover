import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'estatistica_store.g.dart';

class EstatisticaStore = _EstatisticaStoreBase with _$EstatisticaStore;
abstract class _EstatisticaStoreBase with Store {

  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
}