// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:gym_lover/auth_exception.dart';
// import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:gym_lover/auth.dart';
import 'package:gym_lover/cadastro.dart';
import 'package:gym_lover/home.dart';
// import 'package:gym_lover/Validacao.dart';
// import "package:provider/provider.dart";

class treinos_screen extends StatefulWidget {
  @override
  _treinos_screenState createState() => _treinos_screenState();
}

class _treinos_screenState extends State<treinos_screen> {
  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // Auth auth = Provider.of(context, listen: false);
    // Validacao validacao = new Validacao();

    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              height: 750,
              child: Container(
                  child: Stack(children: <Widget>[
                Positioned(
                    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/image/login_bg.png'),
                    fit: BoxFit.cover,
                  )),
                )),
                Positioned(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/image/logo.colorida.png'),
                            fit: BoxFit.cover,
                          )),
                        ))),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 150),
                  child: Column(
                    children: <Widget>[
                      Text("Treino X",
                          style: TextStyle(color: Colors.white, fontSize: 45))
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 270.0, left: 15, right: 15),
                    child: ListView(
                      children: <Widget>[
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return treinos_screen();
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/image/poli.jpg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                    height: 180,
                                    child: Container(
                                      child: Text(
                                        "Polichinelo",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return treinos_screen();
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image.absupra.jpg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                    height: 180,
                                    child: Container(
                                      child: Text(
                                        "Abdominal Supra",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return treinos_screen();
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/esteira.jpg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                    height: 180,
                                    child: Container(
                                      child: Text(
                                        "Esteira",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return treinos_screen();
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/legpress.jpg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                    height: 180,
                                    child: Container(
                                      child: Text(
                                        "Leg Press",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return treinos_screen();
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/image/1.jpg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                    height: 180,
                                    child: Container(
                                      child: Text(
                                        "Supino sentado na máquina",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return treinos_screen();
                                      },
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/image/1.jpg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                    height: 180,
                                    child: Container(
                                      child: Text(
                                        "Cadeira extensora",
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      margin:
                                          EdgeInsets.only(top: 20, left: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ))
              ])),
            ),
          ]),
        ));
  }
}
