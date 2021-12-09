// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:gym_lover/auth_exception.dart';
// import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:gym_lover/auth.dart';
import 'package:gym_lover/cadastro.dart';
import 'package:gym_lover/controllers/home_controller.dart';
import 'package:gym_lover/VIEWS/home.dart';
import 'package:gym_lover/models/Alunos_modal.dart';
import 'package:gym_lover/views/widgets/Alunos_card.dart';
import 'package:gym_lover/controllers/Aluno_controller.dart';


class aluno_instrutor_screen extends StatefulWidget {

  @override
  _aluno_instrutor_screenState createState() => _aluno_instrutor_screenState();
}

class _aluno_instrutor_screenState extends State<aluno_instrutor_screen> {
  aluno_instrutorController controller = aluno_instrutorController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: 250,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/login_bg.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  elevation: 0,
                  floating: true,
                  flexibleSpace: AppBar(
                    backgroundColor: Color(0xffc81e24),
                    automaticallyImplyLeading: false,
                    title: Text("Seus Alunos"),
                    elevation: 50,
                    actions: [
                      IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {},
                      ),
                    ],
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/logo.colorida.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 150,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(""),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return alunosCard(alunosmodal: controller.alunos[index]);
                    },
                    childCount: controller.alunos.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
