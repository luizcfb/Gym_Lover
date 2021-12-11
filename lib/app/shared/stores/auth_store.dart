import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  _AuthStoreBase();

  @observable
  UserCredential? _user;

  @computed
  bool get isLogged => _user != null;

  @computed
  User? get user => _user!.user;

  @action
  void setUser(UserCredential? value) => _user = value;

  Future<void> signOut() async {
    await Modular.get<FirebaseAuth>().signOut();
    setUser(null);
  }
}
