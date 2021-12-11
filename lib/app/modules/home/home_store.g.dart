// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$treinosAtom = Atom(name: 'HomeStoreBase.treinos');

  @override
  ObservableList<TreinoModel> get treinos {
    _$treinosAtom.reportRead();
    return super.treinos;
  }

  @override
  set treinos(ObservableList<TreinoModel> value) {
    _$treinosAtom.reportWrite(value, super.treinos, () {
      super.treinos = value;
    });
  }

  @override
  String toString() {
    return '''
treinos: ${treinos}
    ''';
  }
}
