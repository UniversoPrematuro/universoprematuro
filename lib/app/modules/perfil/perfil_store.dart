import 'package:mobx/mobx.dart';

part 'perfil_store.g.dart';

class PerfilStore = _PerfilStoreBase with _$PerfilStore;
abstract class _PerfilStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}