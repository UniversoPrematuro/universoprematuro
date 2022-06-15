import 'package:mobx/mobx.dart';

part 'configuracoes_store.g.dart';

class ConfiguracoesStore = _ConfiguracoesStoreBase with _$ConfiguracoesStore;
abstract class _ConfiguracoesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}