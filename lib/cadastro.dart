import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

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
                        ))
                    ),
//--------------------------------------------------------------------------//
                    Container()
                  ],
                ))));
  }
}
