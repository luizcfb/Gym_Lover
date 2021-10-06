import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class cadastro_aluno extends StatefulWidget {
  @override
  _cadastro_alunoState createState() => _cadastro_alunoState();
}

class _cadastro_alunoState extends State<cadastro_aluno> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    final _formkey = GlobalKey<FormState>();
    File? _pikedImage = null;

    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: altura * 0.04),
              child: CircleAvatar(
                radius: largura / 3.85,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: largura / 4,
                    backgroundColor: Color(0xFFd0312b).withOpacity(0.95),
                    backgroundImage:
                        (_pikedImage == null) ? null : FileImage(_pikedImage)),
              )),
          Positioned(
              top: altura * 0.20,
              width: largura * 1.38,
              child: RawMaterialButton(
                elevation: 10,
                fillColor: Color(0xFF9f1a1b).withOpacity(1.0),
                child: Icon(FontAwesomeIcons.camera, color: Colors.white),
                padding: EdgeInsets.all(altura * 0.04),
                shape: CircleBorder(),
                onPressed: () {},
              )),
          Container(
              child: Padding(
            padding: EdgeInsets.only(
                top: altura * 0.35,
                left: largura * 0.03,
                right: largura * 0.03,
                bottom: altura * 0.05),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nome Completo*",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon:
                        Icon(Icons.person, color: Color(0xFF9f1a1b), size: 35),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.025),
                  Text(
                    "Nome Social",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.person, color: Colors.transparent, size: 35),
                    hintText: '     (Opcional)',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.025),
                  Text(
                    "Data de Nascimento",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today,
                        color: Color(0xFF9f1a1b), size: 35),
                    hintText: '     00/00/0000',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.025),
                  Text(
                    "Email",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Color(0xFF9f1a1b), size: 35),
                    hintText: '     nome@gymlover.com',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.025),
                  Text(
                    "Sexo",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Colors.transparent, size: 35),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.025),
                  Text(
                    "Senha",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.lock_rounded,
                        color: Color(0xFF9f1a1b), size: 35),
                    hintText: '     Digite Sua Senha',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon:
                        Icon(Icons.lock_rounded, color: Colors.transparent, size: 35),
                    hintText: '     Confirme Sua Senha',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.025),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF9f1a1b),
                        fixedSize: Size( largura * 0.99 , altura * 0.08),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)))),
                    child: Text(
                      "Cadastre-se",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}