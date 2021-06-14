import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Container(
          height: 700,
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
                      alignment: Alignment.topCenter,
                       child: Container(
                         margin: const EdgeInsets.only(top: 15.0),
                         height: 150,
                         width: 150,
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
                      Text("Login", style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                ),
              ])),
        ),
      ]),
    );
  }
}
