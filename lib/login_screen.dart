// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:gym_lover/auth_exception.dart';
// import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:gym_lover/auth.dart';
import 'package:gym_lover/cadastro.dart';
import 'package:gym_lover/forgot_password.dart';
import 'package:gym_lover/views/home.dart';
import 'Alunos_instrutor.dart';
// import 'package:gym_lover/Validacao.dart';
// import "package:provider/provider.dart";


class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {

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
    String email = "";
    String senha = "";

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
                      Text("Login",
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 180, left: 40, right: 40),
                  padding:
                      EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    onChanged: (text) {
                      email = text;},
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "E-mail",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                     //   errorText: validacao.emailValidacao(email.text),
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 250, left: 40, right: 40),
                  padding:
                      EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    onChanged: (text) {
                      senha = text;},
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_rounded),
                      hintText: "Senha",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      //errorText: validacao.senhaValidacao(senha.text),
                    ),
                    obscureText: true,
                  ),
                ),

                Container(
                    margin: EdgeInsets.only(top: 320, left: 40, right: 40),
                    padding:
                        EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                    child: SizedBox(
                      height: 50,
                      width: 700,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          if (senha == "123456" && email == "aluno@gymlover.com") {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) {
                              return home_screen();
                            },),);
                          } else if(senha == "123456" && email == "personal@gymlover.com"){
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) {
                              return aluno_instrutor_screen();
                            },),);
                          }},
                       // onPressed: () {
                       //   var validatext = validacao.SenhaEmailValidacao(email.text, senha.text);

                       //   if (validatext != null){
                            //**** continuar essa logica !!! *****
                       //   }else{
                       //    try {
                       //      auth.sigin( email.text, senha.text);
                       //    }on AuthException catch (e){
                       //      auth.showSnack('Erro na Autenticação', e.toString());
                       //    } catch (e){
                       //      auth.showSnack('Erro na Autenticação', 'Erro Inesperado !');
                       //    }
                       //   }
                       // },
                        color: Color(0xFF9f1a1b),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 375),
                    padding:
                        EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                    alignment: Alignment.center,
                    height: 50,
                   // width: 700,
                    child: TextButton(
                      child: Text(
                        'Esqueceu Sua Senha?',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ForgotPassword();
                        }, ),);
                      },
                    )),

                    Container(
                        margin: EdgeInsets.only(top: 500),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                        height: 50,
                          child: Text(
                            'Não Tem Uma Conta?',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),

                    Container(
                        margin: EdgeInsets.only(top: 560, left: 40, right: 40),
                        padding:
                        EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                        child: SizedBox(
                          height: 50,
                          width: 700,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return cadastro_screen();
                              }, ),);
                            },
                            color: Color(0xFF9f1a1b),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                            child: Text(
                              "Cadastre-se",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 630, right: 5, left: 5),
                            child: IconButton(
                               icon: Image.asset('assets/image/fb.png'),
                               iconSize: 30,
                               onPressed: () {},
                             ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 630, right: 5, left: 5),
                          child: IconButton(
                            icon: Image.asset('assets/image/google.png'),
                            iconSize: 30,
                            onPressed: () {},
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 640, right: 5, left: 5),
                          child: IconButton(
                            icon: Image.asset('assets/image/twitter.png'),
                            iconSize: 30,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
              ])),
            ),
          ]),
        ));
  }
}
