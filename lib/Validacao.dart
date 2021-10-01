import 'package:gym_lover/login_screen.dart';

class Validacao extends login_screen {

  String? emailValidacao(String field) {
    if (field.isEmpty || !field.contains('@')) {
      return 'Insira um e-mail valido';
    }
    return null;
  }

  String? senhaValidacao(String field) {
    if (field.isEmpty) {
      return 'Preencha o campo senha';
    }
    return null;
  }

  String? SenhaEmailValidacao(String email, String senha) {
    if (email.isEmpty || !email.contains('@')) {
      return 'Insira um e-mail valido';
    } else if (senha.isEmpty) {
      return 'Preencha o campo senha';
    } else {
      return null;
    }
  }
}

