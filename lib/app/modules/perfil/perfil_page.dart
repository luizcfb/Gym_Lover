import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/perfil/perfil_store.dart';

class PerfilPage extends StatefulWidget {
  final String title;
  const PerfilPage({
    Key? key,
    this.title = 'PerfilPage',
  }) : super(key: key);
  @override
  PerfilPageState createState() => PerfilPageState();
}

class PerfilPageState extends ModularState<PerfilPage, PerfilStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
