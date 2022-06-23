import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/bottomnavbar/bottomnavbar_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_page.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_page.dart';
import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_page.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';

import '../home/home_page.dart';

class BottomnavbarPage extends StatefulWidget {
  final String title;
  const BottomnavbarPage({Key? key, this.title = 'BottomnavbarPage'}) : super(key: key);
  @override
  BottomnavbarPageState createState() => BottomnavbarPageState();
}
class BottomnavbarPageState extends State<BottomnavbarPage> {
  final BottomnavbarStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        HomePage(),
        PerfilPage(),
        DesenvolvimentoPage(),
        CrescimentoPage(),
        ConfiguracoesPage(),
        Observer(builder: (_) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: store.items,
            currentIndex: store.currentIndex,
            onTap: store.onTap,
          );
        }),
      ],)
        
      
    );
  }
}