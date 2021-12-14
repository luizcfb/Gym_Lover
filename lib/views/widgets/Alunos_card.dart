import 'package:flutter/material.dart';
import 'package:gym_lover/Alunos_instrutor.dart';
import 'package:gym_lover/controllers/Aluno_controller.dart';
import 'package:gym_lover/models/Alunos_modal.dart';


class alunosCard extends StatelessWidget {
  final alunosModal? alunosmodal;
  const alunosCard({Key? key, required this.alunosmodal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return alunosCard(
                alunosmodal: alunosmodal,
              );
            },
          ),
        );
        },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFc81e24),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage("${alunosmodal!.image}"),
              fit: BoxFit.contain,
              alignment: Alignment.topRight,
            ),

          ),
          height: 50,

          child: Container(
            child: Text(
              "${alunosmodal!.nome}",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            margin: EdgeInsets.only(top: 20, left: 15),
          ),
        ),
      ),
    );
  } 
}
