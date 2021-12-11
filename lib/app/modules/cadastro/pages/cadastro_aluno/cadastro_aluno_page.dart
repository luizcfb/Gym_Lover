import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_lover/app/modules/cadastro/pages/cadastro_aluno/cadastro_aluno_store.dart';
import 'package:gym_lover/app/modules/cadastro/pages/widgets/input_text_form.dart';
import 'package:gym_lover/app/modules/cadastro/pages/widgets/select_form.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroAlunoPage extends StatefulWidget {
  final String title;
  const CadastroAlunoPage({Key? key, this.title = 'CadastroAlunoPage'}) : super(key: key);
  @override
  CadastroAlunoPageState createState() => CadastroAlunoPageState();
}

class CadastroAlunoPageState extends ModularState<CadastroAlunoPage, CadastroAlunoStore> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    final _formkey = GlobalKey<FormState>();
    File? _pikedImage;
    var maskFormatterdata = new MaskTextInputFormatter(mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
    String selectedSalutation;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        reverse: true,
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
                  backgroundImage: (_pikedImage != null) ? FileImage(_pikedImage) : null,
                ),
              ),
            ),
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
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  top: altura * 0.36,
                  left: largura * 0.01,
                  right: largura * 0.03,
                  bottom: altura * 0.05,
                ),
                child: Column(
                  children: [
                    SizedBox(height: altura * 0.01),
                    InputTextForm(
                      controller: controller.nameController,
                      icon: Icon(Icons.person, color: Color(0xFF9f1a1b), size: 35),
                      hintText: "Nome Completo *",
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Prenncha o campo';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: altura * 0.01),
                    InputTextForm(
                      controller: controller.nameSocialController,
                      icon: Icon(Icons.person, color: Colors.transparent, size: 35),
                      hintText: "Nome Social  (Opcional)",
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Prenncha o campo';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: altura * 0.01),
                    InputTextForm(
                      controller: controller.dateController,
                      inputFormatters: [maskFormatterdata],
                      keyboardType: TextInputType.datetime,
                      icon: Icon(Icons.calendar_today, color: Color(0xFF9f1a1b), size: 35),
                      hintText: ' Data de Nascimento',
                    ),
                    SizedBox(height: altura * 0.01),
                    InputTextForm(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      icon: Icon(Icons.email, color: Color(0xFF9f1a1b), size: 35),
                      hintText: '  Email',
                    ),
                    SizedBox(height: altura * 0.01),
                    SelectForm(
                      icon: Icon(Icons.email, color: Colors.transparent, size: 35),
                      hint: Text('Sexo'),
                      onChanged: (salutation) => setState(() => selectedSalutation = salutation!),
                      validator: (value) => value == null ? 'field required' : null,
                      items: ['Masculino', 'Feminino', 'Outros'],
                    ),
                    SizedBox(height: altura * 0.01),
                    InputTextForm(
                      controller: controller.senhaController,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      icon: Icon(Icons.lock_rounded, color: Color(0xFF9f1a1b), size: 35),
                      hintText: ' Senha',
                    ),
                    SizedBox(height: altura * 0.01),
                    InputTextForm(
                      controller: controller.senhaConfirmarController,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      icon: Icon(Icons.lock_rounded, color: Colors.transparent, size: 35),
                      hintText: ' Confirme Sua Senha',
                    ),
                    SizedBox(height: altura * 0.025),
                    ElevatedButton(
                      onPressed: () => controller.registration(),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF9f1a1b),
                        fixedSize: Size(largura * 0.99, altura * 0.08),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      child: Text("Cadastre-se", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
