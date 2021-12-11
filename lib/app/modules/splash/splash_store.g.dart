// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashStore on _SplashStoreBase, Store {
  Computed<bool>? _$isVisibleComputed;

  @override
  bool get isVisible =>
      (_$isVisibleComputed ??= Computed<bool>(() => super.isVisible,
              name: '_SplashStoreBase.isVisible'))
          .value;

  final _$visibleAtom = Atom(name: '_SplashStoreBase.visible');

  @override
  bool get visible {
    _$visibleAtom.reportRead();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.reportWrite(value, super.visible, () {
      super.visible = value;
    });
  }

  final _$_SplashStoreBaseActionController =
      ActionController(name: '_SplashStoreBase');

  @override
  void setVisible(bool value) {
    final _$actionInfo = _$_SplashStoreBaseActionController.startAction(
        name: '_SplashStoreBase.setVisible');
    try {
      return super.setVisible(value);
    } finally {
      _$_SplashStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
visible: ${visible},
isVisible: ${isVisible}
    ''';
  }
}
