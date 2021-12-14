import 'package:flutter/material.dart';
import 'package:gym_lover/controllers/criar_treino_personal_controller.dart';
import 'package:gym_lover/views/widgets/personal_navigation_bar.dart';

class CriarTreinoPersonal extends StatefulWidget {
  const CriarTreinoPersonal({Key? key}) : super(key: key);

  @override
  _CriarTreinoPersonalState createState() => _CriarTreinoPersonalState();
}

class _CriarTreinoPersonalState extends State<CriarTreinoPersonal> {
  CriarTreinoPersonalController controller = CriarTreinoPersonalController();

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

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
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // TextFormField(
                        //     decoration: InputDecoration(
                        //   hintText: 'Imagem',
                        //   enabledBorder: OutlineInputBorder(
                        //     borderSide: BorderSide(color: Colors.black54),
                        //     borderRadius: BorderRadius.circular(30.0),
                        //   ),
                        // )),
                        // SizedBox(height: altura * 0.01),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: controller.nameController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'Nome',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: altura * 0.01),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: controller.seriesController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Series',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: altura * 0.01),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () => controller.save(context),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF9f1a1b),
                              fixedSize: Size(largura * 0.99, altura * 0.08),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                            child: Text(
                              "Cadastre-se",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
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
