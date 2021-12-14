import 'package:flutter/material.dart';
import 'package:gym_lover/models/exercicio_modal.dart';

class ExercicioCard extends StatelessWidget {
  final ExercicioModal? exercicioModal;
  const ExercicioCard({Key? key, this.exercicioModal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          child: Container(
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("${exercicioModal?.image}"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            height: 180,
            child: Container(
              child: Text(
                "${exercicioModal?.nome}",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              margin: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
