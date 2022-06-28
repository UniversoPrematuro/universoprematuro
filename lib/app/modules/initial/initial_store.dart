
// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

part 'initial_store.g.dart';

class InitialStore = _InitialStoreBase with _$InitialStore;
abstract class _InitialStoreBase with Store {


  // @observable
  // int value = 0;

  // @action
  // void increment() {
  //   value++;
  // } 
}