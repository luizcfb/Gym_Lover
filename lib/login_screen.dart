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
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 180, left: 40, right: 40),
                  padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "E-mail",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                        )
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 250, left: 40, right: 40),
                  padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_rounded),
                        hintText: "Senha",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                    ),
                    obscureText: true,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 320, left: 40, right: 40),
                  padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                  child: SizedBox(
                    height: 50,
                    width: 700,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Color(0xFF9f1a1b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Text(
                      "Login", style: TextStyle(color: Colors.white),
                    ),
                  ),
                  )),

                  Container(
                      margin: EdgeInsets.only(top: 370),
                      padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                      height: 50,
                      width: 700,
                  child: TextButton(
                  child: Text('Esqueceu Sua Senha?', style: TextStyle(color: Colors.white),),
                  onPressed: (){},
    )),
              ])),
        ),

      ]),
      ));
  }
}
