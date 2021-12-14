import 'dart:convert';

class ExercicioModal {
  final String? id;
  final String? nome;
  final String? image;
  final String? series;

  ExercicioModal({
    this.id,
    this.nome,
    this.image,
    this.series,
  });

  ExercicioModal copyWith({
    String? id,
    String? nome,
    String? image,
    String? series,
  }) {
    return ExercicioModal(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      image: image ?? this.image,
      series: series ?? this.series,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'image': image,
      'series': series,
    };
  }

  factory ExercicioModal.fromMap(Map<String, dynamic> map) {
    return ExercicioModal(
      id: map['id'],
      nome: map['nome'],
      image: map['image'],
      series: map['series'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ExercicioModal.fromJson(String source) => ExercicioModal.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ExercicioModal(id: $id, nome: $nome, image: $image, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExercicioModal &&
        other.id == id &&
        other.nome == nome &&
        other.image == image &&
        other.series == series;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ image.hashCode ^ series.hashCode;
  }
}
