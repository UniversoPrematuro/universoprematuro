import 'package:mobx/mobx.dart';

part 'desenvolvimento_store.g.dart';

class DesenvolvimentoStore = _DesenvolvimentoStoreBase with _$DesenvolvimentoStore;
abstract class _DesenvolvimentoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}