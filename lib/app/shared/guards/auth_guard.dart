import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/shared/stores/auth_store.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/login');

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute<dynamic> route) {
    return Modular.get<AuthStore>().isLogged;
  }
}
