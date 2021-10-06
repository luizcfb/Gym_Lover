import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'Cadastro_Aluno.dart';

class cadastro_screen extends StatefulWidget {
  @override
  _cadastro_screenState createState() => _cadastro_screenState();
}

class _cadastro_screenState extends State<cadastro_screen> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return DefaultTabController(
        length: 2,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/background_cadastro.jpg'),
                  fit: BoxFit.cover)),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              resizeToAvoidBottomInset: false,
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(75.0),
                  child: AppBar(
                      backgroundColor: Color(0x44000000),
                      elevation: 0.0,
                      bottom: TabBar(
                        indicatorColor: Colors.white,
                        labelStyle: TextStyle(fontSize: 20.00),
                        tabs: [
                          Tab(text: 'Sou Aluno'),
                          Tab(text: 'Sou Instrutor'),
                        ],
                      ))),
              body: TabBarView(
                  children: [

                    cadastro_aluno(),

                    Scaffold(
                      backgroundColor: Colors.transparent,
                      body: SingleChildScrollView(
                          child: Stack( children: [
                          Container(
                          margin: EdgeInsets.only(top: altura * 0.04),
                          child: Positioned(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                    radius: largura / 4,
                                    backgroundColor:
                                    Color(0xFFd0312b).withOpacity(0.95),
                                    child: Icon(
                                      FontAwesomeIcons.user,
                                      color: Colors.white,
                                      size: altura * 0.12,
                                    )),
                              ))),
                      Positioned(
                        top: altura * 0.22,
                        width: largura * 1.4,
                        child: Container(
                          height: altura * 0.09,
                          width: largura * 0.09,
                          decoration: BoxDecoration(
                            color: Color(0xFF9f1a1b).withOpacity(1.0),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(FontAwesomeIcons.camera,
                              color: Colors.white),
                        ),
                      ),
                      // Column(
                      //     children: [
                      //       Flexible(child: Text('Nome Completo *', style: TextStyle(
                      //           color: Colors.black, fontSize: 20),)
                      //       )]),
                  ])
        )),
//--------------------------------------------------------------------------//
//     Container()
     ],
    ))));
  }
}
