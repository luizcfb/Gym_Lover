import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/cadastro/pages/cadastro_aluno/cadastro_aluno_page.dart';
import 'package:gym_lover/app/modules/cadastro/pages/cadastro_instrutor/cadastro_instrutor_page.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key? key, this.title = 'CadastroPage'}) : super(key: key);
  @override
  CadastroPageState createState() => CadastroPageState();
}

class CadastroPageState extends State<CadastroPage> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc81e24),
        elevation: 0,
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          labelStyle: TextStyle(fontSize: 20.00),
          tabs: [
            Tab(text: 'Sou Aluno'),
            Tab(text: 'Sou Instrutor'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CadastroAlunoPage(),
          CadastroInstructorPage(),
        ],
      ),
    );
  }
}
