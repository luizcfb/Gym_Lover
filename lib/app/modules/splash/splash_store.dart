import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  @observable
  bool visible = true;

  @action
  void setVisible(bool value) => visible = value;

  @computed
  bool get isVisible => visible;

  void redirect() {
    Future.delayed(Duration(milliseconds: 1500), () => Modular.to.pushReplacementNamed("/login/"));
  }
}
