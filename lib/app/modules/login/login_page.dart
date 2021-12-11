import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/login/login_store.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginStore> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
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
                    ),
                  ),
                ),
              ),
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
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 150,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(
                  top: 180,
                  left: 40,
                  right: 40,
                ),
                padding: EdgeInsets.only(
                  top: 2,
                  left: 8,
                  right: 8,
                  bottom: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextFormField(
                  controller: controller.email,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: "E-mail",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    //   errorText: validacao.emailValidacao(email.text),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 250, left: 40, right: 40),
                padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                  controller: controller.senha,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock_rounded),
                    hintText: "Senha",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    //errorText: validacao.senhaValidacao(senha.text),
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 320,
                  left: 40,
                  right: 40,
                ),
                padding: EdgeInsets.only(
                  top: 2,
                  left: 8,
                  right: 8,
                  bottom: 4,
                ),
                child: SizedBox(
                  height: 50,
                  width: 700,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () => controller.redirectHome(),
                    color: Color(0xFF9f1a1b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 375),
                padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                alignment: Alignment.center,
                height: 50,
                // width: 700,
                child: TextButton(
                  child: Text(
                    'Esqueceu Sua Senha?',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => controller.redirectForgotPassword(),
                ),
              ),
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
                padding: EdgeInsets.only(top: 2, left: 8, right: 8, bottom: 4),
                child: SizedBox(
                  height: 50,
                  width: 700,
                  child: RaisedButton(
                    onPressed: () => controller.redirectCadastro(),
                    color: Color(0xFF9f1a1b),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      "Cadastre-se",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 630, right: 5, left: 5),
                    child: IconButton(
                      icon: Image.asset('assets/image/fb.png'),
                      iconSize: 30,
                      onPressed: () => controller.signInWithFacebook(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 630, right: 5, left: 5),
                    child: IconButton(
                      icon: Image.asset('assets/image/google.png'),
                      iconSize: 30,
                      onPressed: () => controller.signInWithGoogle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 640, right: 5, left: 5),
                    child: IconButton(
                      icon: Image.asset('assets/image/twitter.png'),
                      iconSize: 30,
                      onPressed: () => controller.signInWithTwitter(),
                    ),
                  ),
                ],
              ),
            ])),
          ),
        ]),
      ),
    );
  }
}
