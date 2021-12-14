import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:gym_lover/models/exercicio_modal.dart';

class TreinoModel {
  final String? id;
  final String? nome;
  final String? imagem;
  final List<ExercicioModal>? exercicios;

  TreinoModel({
    this.id,
    this.nome,
    this.imagem,
    this.exercicios,
  });

  TreinoModel copyWith({
    String? id,
    String? nome,
    String? imagem,
    List<ExercicioModal>? exercicios,
  }) {
    return TreinoModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      imagem: imagem ?? this.imagem,
      exercicios: exercicios ?? this.exercicios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'imagem': imagem,
      'exercicios': exercicios?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory TreinoModel.fromMap(Map<String, dynamic> map) {
    return TreinoModel(
      id: map['id'],
      nome: map['nome'],
      imagem: map['imagem'],
      exercicios: map['exercicios'] != null
          ? List<ExercicioModal>.from(map['exercicios']?.map((x) => ExercicioModal.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TreinoModel.fromJson(String source) => TreinoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TreinoModel(id: $id, nome: $nome, imagem: $imagem, exercicios: $exercicios)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TreinoModel &&
        other.id == id &&
        other.nome == nome &&
        other.imagem == imagem &&
        listEquals(other.exercicios, exercicios);
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ imagem.hashCode ^ exercicios.hashCode;
  }
}
