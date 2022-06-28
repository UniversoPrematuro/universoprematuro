// ignore_for_file: library_private_types_in_public_api

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