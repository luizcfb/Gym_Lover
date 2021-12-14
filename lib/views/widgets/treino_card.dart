import 'package:flutter/material.dart';
import 'package:gym_lover/models/treino_model.dart';
import 'package:gym_lover/views/treinos.dart';

class TreinoCard extends StatelessWidget {
  final TreinoModel treinoModel;

  const TreinoCard({Key? key, required this.treinoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return treinos_screen(
                  treinoModel: treinoModel,
                );
              },
            ),
          );
        },
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75),
                ),
              ],
              image: DecorationImage(
                image: NetworkImage("${treinoModel.imagem}"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            height: 180,
            child: Container(
              child: Text(
                "${treinoModel.nome}",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
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
