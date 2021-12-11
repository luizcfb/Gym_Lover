import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gym_lover/app/modules/cadastro/cadastro_module.dart';
import 'package:gym_lover/app/modules/chat/chat_module.dart';
import 'package:gym_lover/app/modules/estatistica/estatistica_module.dart';
import 'package:gym_lover/app/modules/forgot_password/forgot_password_module.dart';
import 'package:gym_lover/app/modules/login/login_module.dart';
import 'package:gym_lover/app/modules/perfil/perfil_module.dart';
import 'package:gym_lover/app/modules/splash/splash_module.dart';
import 'package:gym_lover/app/modules/treino_personal/treino_personal_module.dart';
import 'package:gym_lover/app/modules/treinos/treinos_module.dart';
import 'package:gym_lover/app/shared/guards/auth_guard.dart';
import 'package:gym_lover/app/shared/stores/auth_store.dart';
import 'package:gym_lover/app/shared/widgets/navbar_bottom.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.instance<FirebaseApp>(Firebase.app()),
    Bind.instance<FirebaseAuth>(FirebaseAuth.instance),
    Bind.lazySingleton((i) => GoogleSignIn()),
    Bind.lazySingleton((i) => AuthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/cadastro", module: CadastroModule()),
    ModuleRoute("/forgot_password", module: ForgotPasswordModule()),
    ChildRoute('/app', child: (context, args) => NavbarBottom(), guards: [
      AuthGuard()
    ], children: [
      ModuleRoute("/home", module: HomeModule()),
      ModuleRoute("/treino_personal", module: TreinoPersonalModule()),
      ModuleRoute("/treinos", module: TreinosModule()),
      ModuleRoute("/estatistica", module: EstatisticaModule()),
      ModuleRoute("/perfil", module: PerfilModule()),
      ModuleRoute("/chat", module: ChatModule()),
    ]),
  ];
}
