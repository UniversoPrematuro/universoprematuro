import 'package:mobx/mobx.dart';

part 'tip_store.g.dart';

class TipStore = _TipStoreBase with _$TipStore;
abstract class _TipStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}