import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/estatistica/estatistica_store.dart';

class EstatisticaPage extends StatefulWidget {
  final String title;
  const EstatisticaPage({
    Key? key,
    this.title = 'EstatisticaPage',
  }) : super(key: key);
  @override
  EstatisticaPageState createState() => EstatisticaPageState();
}

class EstatisticaPageState extends ModularState<EstatisticaPage, EstatisticaStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
