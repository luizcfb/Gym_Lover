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
      image: "https://img.vixdata.io/pd/webp-large/pt/sites/default/files/e/exercicio-iosometria-prancha-1216-1400x800.jpg",
      nome: "Prancha",
      series: "5"
    ),
    ExercicioModal(
      image: "https://blog.gsuplementos.com.br/wp-content/uploads/2017/08/beneficios-bcaa-reconstru%C3%A7%C3%A3o-muscular.jpg",
      nome: "Abdominal",
      series: "45"
    ),
    ExercicioModal(
      image: "https://ssl8972.websiteseguro.com/curtiram/images/fotos/mh_interna_destaque_motivos-beneficios-fazer-flexao-flexoes-de-braco-todos-os-dias%20(7).jpg",
      nome: "Flexão",
      series: "25"
    ),
  ];
}
