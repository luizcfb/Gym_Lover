import 'package:flutter/material.dart';
import 'package:gym_lover/app/shared/models/treino_model.dart';

class TreinoCard extends StatelessWidget {
  final TreinoModel treinoModel;
  final void Function()? onTap;
  const TreinoCard({Key? key, required this.treinoModel, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("${treinoModel.imagem}"),
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
            margin: EdgeInsets.only(top: 20, left: 15),
          ),
        ),
      ),
    );
  }
}
