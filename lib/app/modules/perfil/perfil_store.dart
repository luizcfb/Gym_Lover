import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'perfil_store.g.dart';

class PerfilStore = _PerfilStoreBase with _$PerfilStore;
abstract class _PerfilStoreBase with Store {

  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
}