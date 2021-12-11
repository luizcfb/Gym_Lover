import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/shared/stores/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_aluno_store.g.dart';

class CadastroAlunoStore = _CadastroStoreBase with _$CadastroAlunoStore;

abstract class _CadastroStoreBase with Store {
  TextEditingController nameController = TextEditingController();
  TextEditingController nameSocialController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController senhaConfirmarController = TextEditingController();

  Future<void> registration() async {
    try {
      UserCredential userCredential = await Modular.get<FirebaseAuth>().createUserWithEmailAndPassword(
        email: emailController.text,
        password: senhaController.text,
      );
      Modular.get<AuthStore>().setUser(userCredential);
      redirectHome();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void redirectHome() {
    Modular.to.pushReplacementNamed("/app/home/");
  }
}
