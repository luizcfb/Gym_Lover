import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'forgot_password_store.g.dart';

class ForgotPasswordStore = _ForgotPasswordStoreBase with _$ForgotPasswordStore;

abstract class _ForgotPasswordStoreBase with Store {
  final emailController = TextEditingController();

  @observable
  bool _loading = false;

  @computed
  bool get loading => _loading;

  @action
  void setLoading(bool value) => _loading = value;

  void send() async {
    setLoading(true);
    await Modular.get<FirebaseAuth>().sendPasswordResetEmail(email: emailController.text).then((value) {
      setLoading(false);
    });
  }
}
