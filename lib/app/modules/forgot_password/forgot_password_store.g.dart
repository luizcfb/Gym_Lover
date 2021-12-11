// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ForgotPasswordStore on _ForgotPasswordStoreBase, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??= Computed<bool>(() => super.loading,
          name: '_ForgotPasswordStoreBase.loading'))
      .value;

  final _$_loadingAtom = Atom(name: '_ForgotPasswordStoreBase._loading');

  @override
  bool get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  final _$_ForgotPasswordStoreBaseActionController =
      ActionController(name: '_ForgotPasswordStoreBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_ForgotPasswordStoreBaseActionController.startAction(
        name: '_ForgotPasswordStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_ForgotPasswordStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
