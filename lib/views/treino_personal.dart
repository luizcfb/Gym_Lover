import 'package:flutter/material.dart';
import 'package:gym_lover/controllers/treino_personal_controller.dart';
import 'package:gym_lover/views/criar_treino_personal.dart';
import 'package:gym_lover/views/widgets/exercicio_card.dart';
import 'package:gym_lover/views/widgets/exercicio_personal_card.dart';
import 'package:gym_lover/views/widgets/navigation_bar.dart';

class TreinoPersonal extends StatefulWidget {
  const TreinoPersonal({Key? key}) : super(key: key);

  @override
  _TreinoPersonalState createState() => _TreinoPersonalState();
}

class _TreinoPersonalState extends State<TreinoPersonal> {
  TreinoPersonalController controller = TreinoPersonalController();

  @override
  void initState() {
    super.initState();
    reload();
  }

  Future<void> reload() async {
    final exercicios = await controller.fetchData();
    setState(() {
      controller.exercicios = exercicios;
    });
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
            child: RefreshIndicator(
              onRefresh: () => reload(),
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
                              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
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
                            exercicioModal: controller.exercicios[index],
                          );
                        },
                        childCount: controller.exercicios.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CriarTreinoPersonal();
            },
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
