import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gym_lover/models/treino_model.dart';
import 'package:gym_lover/services/databases_services.dart';
import 'package:uuid/uuid.dart';

class HomeController extends ChangeNotifier {
  HomeController() {
    load();
  }

  final DatabaseServices databaseServices = DatabaseServices("treinos");

  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;
  List<TreinoModel> treinos = [];

  void limparTreinos() {
    treinos.clear();
    notifyListeners();
  }

  Future<void> load() async {
    loading = true;
    final result = await fetchTreinos();
    treinos = result;
    notifyListeners();
  }

  Future<List<TreinoModel>> fetchTreinos() async {
    var result = await databaseServices.getDataCollection();
    final treinos = result.docs.map((doc) => TreinoModel.fromMap(doc.data())).toList();
    return treinos;
  }

  Stream<QuerySnapshot> fetchTreinosAsStream() {
    return databaseServices.streamDataCollection();
  }

  Future<TreinoModel> getTreinoById(String id) async {
    var doc = await databaseServices.getDocumentById(id);
    return TreinoModel.fromJson(doc.data().toString());
  }

  Future removeTreino(String id) async {
    await databaseServices.removeDocument(id);
    return;
  }

  Future updateTreino(TreinoModel data, String id) async {
    await databaseServices.updateDocument(data.toMap(), id);
    return;
  }

  Future addTreino(TreinoModel data) async {
    final treino = data.copyWith(id: Uuid().v4());
    var result = await databaseServices.addDocument(treino.toMap());
    return;
  }
}
