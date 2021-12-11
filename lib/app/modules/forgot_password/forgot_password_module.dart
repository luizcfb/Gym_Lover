import 'package:gym_lover/app/modules/forgot_password/forgot_password_page.dart';
import 'package:gym_lover/app/modules/forgot_password/forgot_password_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ForgotPasswordModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ForgotPasswordStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ForgotPasswordPage()),
  ];
}
