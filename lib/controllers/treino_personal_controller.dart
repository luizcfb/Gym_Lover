import 'package:flutter/foundation.dart';
import 'package:gym_lover/models/exercicio_modal.dart';

class TreinoPersonalController extends ChangeNotifier {
  List<ExercicioModal> exercicios = [
    ExercicioModal(
      image: "https://felizsaude.com.br/wp-content/uploads/2021/01/poli.jpg",
      nome: "Polichinelo",
      series: "20"
    ),
    ExercicioModal(
      image: "https://felizsaude.com.br/wp-content/uploads/2021/01/poli.jpg",
      nome: "Prancha",
      series: "5"
    ),
    ExercicioModal(
      image: "https://felizsaude.com.br/wp-content/uploads/2021/01/poli.jpg",
      nome: "Abdominal",
      series: "45"
    ),
    ExercicioModal(
      image: "https://felizsaude.com.br/wp-content/uploads/2021/01/poli.jpg",
      nome: "Flexão",
      series: "25"
    ),
  ];
}
