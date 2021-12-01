import 'package:flutter/material.dart';
import 'package:gym_lover/models/exercicio_modal.dart';

class ExercicioPersonalCard extends StatelessWidget {
  final ExercicioModal? exercicioModal;
  const ExercicioPersonalCard({Key? key, this.exercicioModal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card( 
        borderOnForeground: false,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              image: NetworkImage("${exercicioModal?.image}"),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          height: 180,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "${exercicioModal?.nome}",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: exercicioModal?.series?.isNotEmpty ?? false,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${exercicioModal?.series}x",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 15),
          ),
        ),
      ),
    );
  }
}
