import 'package:flutter/material.dart';
import 'package:gym_lover/models/exercicio_modal.dart';
import 'package:gym_lover/models/treino_model.dart';

class HomeController extends ChangeNotifier {
  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
  List<TreinoModel> treinos = [
    TreinoModel(
      nome: "TREINO 1",
      imagem: "assets/image/1.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 2",
      imagem: "assets/image/2.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 3",
      imagem: "assets/image/3.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 1",
      imagem: "assets/image/1.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 2",
      imagem: "assets/image/2.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 3",
      imagem: "assets/image/3.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 1",
      imagem: "assets/image/1.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 2",
      imagem: "assets/image/2.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 3",
      imagem: "assets/image/3.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 1",
      imagem: "assets/image/1.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 2",
      imagem: "assets/image/2.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
    TreinoModel(
      nome: "TREINO 3",
      imagem: "assets/image/3.jpg",
      exercicios: [
        ExercicioModal(nome: "Abdominal", image: "assets/image/poli.gif"),
      ],
    ),
  ];

  // final width = MediaQuery.of(context).size.width;
  // Auth auth = Provider.of(context, listen: false);
  // Validacao validacao = new Validacao();

  void limparTreinos() {
    treinos.clear();
    notifyListeners();
  }
}
