import 'package:mobx/mobx.dart';

part 'crescimento_store.g.dart';

class CrescimentoStore = _CrescimentoStoreBase with _$CrescimentoStore;
abstract class _CrescimentoStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}