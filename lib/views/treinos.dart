// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:gym_lover/auth_exception.dart';
// import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_lover/auth.dart';
import 'package:gym_lover/cadastro.dart';
import 'package:gym_lover/controllers/treino_controller.dart';
import 'package:gym_lover/models/treino_model.dart';
import 'package:gym_lover/views/home.dart';
import 'package:gym_lover/views/widgets/exercicio_card.dart';
// import 'package:gym_lover/Validacao.dart';
// import "package:provider/provider.dart";

class treinos_screen extends StatefulWidget {
  final TreinoModel treinoModel;

  const treinos_screen({
    Key? key,
    required this.treinoModel,
  }) : super(key: key);

  @override
  _treinos_screenState createState() => _treinos_screenState();
}

class _treinos_screenState extends State<treinos_screen> {
  TreinoController controller = TreinoController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    setState(() {
      controller.exercicios = widget.treinoModel.exercicios ?? [];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 250,
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/login_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
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
                    backgroundColor: Color(0xFFc81e24),
                    title: Text("${widget.treinoModel.nome}"),
                    elevation: 0,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 150,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text("Lista de Treino"),
                ),
                Expanded(
                  flex: 1,
                  child: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ExercicioCard(
                          exercicioModal:
                              controller.exercicios.elementAt(index),
                        );
                      },
                      childCount: controller.exercicios.length,
                    ),
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
