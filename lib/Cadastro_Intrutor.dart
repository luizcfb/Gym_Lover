import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class cadastro_instrutor extends StatefulWidget {
  @override
  _cadastro_instrutorState createState() => _cadastro_instrutorState();
}

class _cadastro_instrutorState extends State<cadastro_instrutor> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    final _formkey = GlobalKey<FormState>();
    File? _pikedImage = null;
    var maskFormatterdata = new MaskTextInputFormatter(
        mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
    String selectedSalutation;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
          reverse: true,
          child: Stack(children: [
            Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: altura * 0.04),
                child: CircleAvatar(
                  radius: largura / 3.85,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: largura / 4,
                      backgroundColor: Color(0xFFd0312b).withOpacity(0.95),
                      backgroundImage: (_pikedImage == null)
                          ? null
                          : FileImage(_pikedImage)),
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
                  top: altura * 0.36,
                  left: largura * 0.01,
                  right: largura * 0.03,
                  bottom: altura * 0.05),
              child: Column(
                children: [
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,
                            color: Color(0xFF9f1a1b), size: 35),
                        hintText: "Nome Completo *",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Prenncha o campo';
                        }
                        return null;
                      }),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person,
                            color: Colors.transparent, size: 35),
                        hintText: "Nome Social  (Opcional)",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Prenncha o campo';
                        }
                        return null;
                      }),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      inputFormatters: [maskFormatterdata],
                      decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today,
                            color: Color(0xFF9f1a1b), size: 35),
                        hintText: ' Data de Nascimento',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                            borderRadius: BorderRadius.circular(30.0)),
                      )),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today,
                        color: Colors.transparent, size: 35),
                    hintText: ' CONFEF',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Color(0xFF9f1a1b), size: 35),
                    hintText: '  Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.01),
                  DropdownButtonFormField<String>(
                    //value: selectedSalutation,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email,
                          color: Colors.transparent, size: 35),
                      hintText: '  Email',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    hint: Text(
                      'Sexo',
                    ),
                    onChanged: (salutation) =>
                        setState(() => selectedSalutation = salutation!),
                    validator: (value) =>
                        value == null ? 'field required' : null,
                    items: ['Masculino', 'Feminino', 'Outros']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.lock_rounded,
                        color: Color(0xFF9f1a1b), size: 35),
                    hintText: ' Senha',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.01),
                  TextFormField(
                      decoration: InputDecoration(
                    icon: Icon(Icons.lock_rounded,
                        color: Colors.transparent, size: 35),
                    hintText: ' Confirme Sua Senha',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
                  SizedBox(height: altura * 0.025),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF9f1a1b),
                        fixedSize: Size(largura * 0.99, altura * 0.08),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                    child: Text(
                      "Cadastre-se",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ))
          ])),
    );
  }
}
