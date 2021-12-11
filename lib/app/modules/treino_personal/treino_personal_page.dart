import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/treino_personal/treino_personal_store.dart';
import 'package:gym_lover/app/shared/widgets/exercicio_personal_card.dart';

class TreinoPersonalPage extends StatefulWidget {
  final String title;
  const TreinoPersonalPage({Key? key, this.title = 'TreinoPersonalPage'}) : super(key: key);
  @override
  TreinoPersonalPageState createState() => TreinoPersonalPageState();
}
class TreinoPersonalPageState extends ModularState<TreinoPersonalPage, TreinoPersonalStore> {
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
                  backgroundColor: Colors.transparent,
                  toolbarHeight: 190,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage('https://via.placeholder.com/150'),
                            backgroundColor: Colors.transparent,
                            minRadius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("Treino de Scarlet"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ExercicioPersonalCard(
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {},
      ),
    );
  }
}