import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/bottomnavbar/components/items.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_page.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_page.dart';
import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_page.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';

import '../home/home_page.dart';

part 'bottomnavbar_store.g.dart';

class BottomnavbarStore = _BottomnavbarStoreBase with _$BottomnavbarStore;
abstract class _BottomnavbarStoreBase with Store {

  final List<BottomNavigationBarItem> items = BottomNav.list;
  List pages = [
    HomePage(),
    PerfilPage(),
    DesenvolvimentoPage(),
    CrescimentoPage(),
    ConfiguracoesPage()
    // Modular.initialRoute, '/home',
    // Modular.to.path, '/perfil'
    ];

  @observable
  int currentIndex = 0;

  @action
  Future setIndex(int index) async {
    currentIndex = index;
  }

  void onTap(int index) async {
    await setIndex(index);
    Modular.to.pushReplacementNamed(pages[index]);
  }
}