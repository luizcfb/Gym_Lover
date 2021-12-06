import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class avaliacao_fisica extends StatefulWidget {
  @override
  _avaliacao_fisicaState createState() => _avaliacao_fisicaState();
}

class _avaliacao_fisicaState extends State<avaliacao_fisica> {
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
          child: Column(
          children: <Widget>[
      Container(
      height: 900,
      child: Container(
          child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/background_avfisica.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

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

                      Row(children: [
                        Expanded(
                          child: TextFormField(
                              inputFormatters: [maskFormatterdata],
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today,
                                    color: Color(0xFF9f1a1b), size: 35),
                                hintText: ' Data de Nascimento',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            //value: selectedSalutation,
                            decoration: InputDecoration(
                              icon: Icon(Icons.email,
                                  color: Colors.transparent, size: 35),
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
                        )
                      ]),

                      SizedBox(height: altura * 0.01),

                      TextFormField(
                          decoration: InputDecoration(
                            icon:
                            Icon(Icons.email, color: Color(0xFF9f1a1b), size: 35),
                            hintText: '  Email',
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(30.0)),
                          )),

                      SizedBox(height: altura * 0.01),

                      Row(children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.lock_rounded,
                                  color: Colors.transparent, size: 35),
                              hintText: "Peso: ",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(30.0)),
                          )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                hintText: "Altura: ",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        )
                      ]),

                      SizedBox(height: altura * 0.01),

                      Row(children: [
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock_rounded,
                                    color: Colors.transparent, size: 35),
                                hintText: "IMC: ",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF9f1a1b),
                                fixedSize: Size(largura * 0.25, altura * 0.08),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                            child: Text(
                              "Ref. IMC",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),

                      SizedBox(height: altura * 0.025),

                      Row(children: [
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock_rounded,
                                    color: Colors.transparent, size: 35),
                                hintText: "%G Corporal (Body Fat): ",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF9f1a1b),
                                fixedSize: Size(largura * 0.25, altura * 0.08),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                            child: Text(
                              "Ref. Body Fat",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),

                      SizedBox(height: altura * 0.025),

                      Row(children: [
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock_rounded,
                                    color: Colors.transparent, size: 35),
                                hintText: "M. Esquelético (Muscle): ",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF9f1a1b),
                                fixedSize: Size(largura * 0.25, altura * 0.08),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                            child: Text(
                              "Ref. Muscle:",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),

                      SizedBox(height: altura * 0.025),

                      Row(children: [
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock_rounded,
                                    color: Colors.transparent, size: 35),
                                hintText: "Met. em repouso: ",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                hintText: "Idade bio.: ",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        )
                      ]),

                      SizedBox(height: altura * 0.01),

                      Row(children: [
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock_rounded,
                                    color: Colors.transparent, size: 35),
                                hintText: "Gordura Visceral (Visceral Fat): ",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                    borderRadius: BorderRadius.circular(30.0)),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF9f1a1b),
                                fixedSize: Size(largura * 0.25, altura * 0.08),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                            child: Text(
                              "Ref. V. Fat:",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),

                    ],
                  ),
                ))
          ])),
    ),
      ]),
      ),
    );
  }
}
