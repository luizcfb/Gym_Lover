// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:gym_lover/auth_exception.dart';
// import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:gym_lover/auth.dart';
import 'package:gym_lover/cadastro.dart';
import 'package:gym_lover/home.dart';

import 'Treinos.dart';
// import 'package:gym_lover/Validacao.dart';
// import "package:provider/provider.dart";

class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
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
                      Text("Olá, Teste!",
                          style: TextStyle(color: Colors.white, fontSize: 45))
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 270.0, left: 15, right: 15),
                    child: ListView(
                      children: <Widget>[
                        GestureDetector(
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
                                  "TREINO 1",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                margin: EdgeInsets.only(top: 20, left: 15),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                                  image: AssetImage('assets/image/2.jpg'),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              height: 180,
                              child: Container(
                                child: Text(
                                  "TREINO 2",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                margin: EdgeInsets.only(top: 20, left: 15),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                                  image: AssetImage('assets/image/3.jpg'),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              height: 180,
                              child: Container(
                                child: Text(
                                  "TREINO 3",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                margin: EdgeInsets.only(top: 20, left: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ])),
            ),
          ]),
        ));
  }
}
