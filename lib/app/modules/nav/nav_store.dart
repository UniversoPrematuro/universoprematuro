// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'nav_store.g.dart';

class NavStore = _NavStoreBase with _$NavStore;
abstract class _NavStoreBase with Store {

  @observable
  PageController pageViewController = PageController();


}