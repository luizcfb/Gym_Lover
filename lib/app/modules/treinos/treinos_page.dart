import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/treinos/treinos_store.dart';
import 'package:gym_lover/app/shared/models/treino_model.dart';
import 'package:gym_lover/app/shared/widgets/exercicio_card.dart';

class TreinosPage extends StatefulWidget {
  final TreinoModel? treinoModel;
  final String title;
  const TreinosPage({
    Key? key,
    this.title = 'TreinosPage',
    required this.treinoModel,
  }) : super(key: key);
  @override
  TreinosPageState createState() => TreinosPageState();
}

class TreinosPageState extends ModularState<TreinosPage, TreinosStore> {
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
                  automaticallyImplyLeading: false,
                  flexibleSpace: AppBar(
                    backgroundColor: Color(0xFFc81e24),
                    title: Text("${widget.treinoModel?.nome}"),
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
