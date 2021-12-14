import 'dart:convert';

class PersonalModal {
  final String? nome;
  final String? image;
  PersonalModal({
    this.nome,
    this.image,
  });

  PersonalModal copyWith({
    String? nome,
    String? image,
  }) {
    return PersonalModal(
      nome: nome ?? this.nome,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'image': image,
    };
  }

  factory PersonalModal.fromMap(Map<String, dynamic> map) {
    return PersonalModal(
      nome: map['nome'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonalModal.fromJson(String source) => PersonalModal.fromMap(json.decode(source));

  @override
  String toString() => 'PersonalModal(nome: $nome, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonalModal && other.nome == nome && other.image == image;
  }

  @override
  int get hashCode => nome.hashCode ^ image.hashCode;
}
