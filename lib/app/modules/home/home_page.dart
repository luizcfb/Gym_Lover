import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/home/home_store.dart';
import 'package:gym_lover/app/shared/widgets/treino_card.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
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
                    backgroundColor: Color(0xFFc81e24),
                    automaticallyImplyLeading: false,
                    title: Text("Olá Adriana"),
                    elevation: 0,
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
                  child: Text("Lista de Treino"),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return TreinoCard(
                        treinoModel: controller.treinos[index],
                        onTap: () => Modular.to.pushNamed(
                          "/app/treinos/",
                          arguments: controller.treinos[index],
                        ),
                      );
                    },
                    childCount: controller.treinos.length,
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
