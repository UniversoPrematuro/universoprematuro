// ignore_for_file: unused_import

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {

  // @observable
  // var pageController = PageController();

  // @observable
  // int selectedIndex = 0;

  // @action
  // void changePage(int index) {
  //   pageController.jumpToPage(index);
  //   selectedIndex = index;
  // }

  // final List<BottomNavigationBarItem> items = BNBItems.list;
  // List<String> pages = [Modular.initialRoute, '/home'];

  // @observable
  // int currentIndex = 0;

  // @action
  // Future setIndex(int index) async {
  //   currentIndex = index;
  // }

  // void onTap(int index) async {
  //   await setIndex(index);
  //   Modular.to.pushReplacementNamed(pages[index]);
  // }
  
}