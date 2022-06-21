

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_page.dart';

import 'package:universoprematuro/app/modules/home/home_store.dart';

import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

import '../crescimento/crescimento_page.dart';
import '../desenvolvimento/desenvolvimento_page.dart';


class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  final HomeStore store = Modular.get();
  final RegisterStore reg = Modular.get();






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBuilder(
        
        animation: store.pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: store.pageViewController.page?.round() ?? 0,
            onTap: (index){
              store.pageViewController.jumpToPage(index);
            },
            items: const [
          
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil",
              
              ),
            BottomNavigationBarItem(
             icon: Icon(Icons.home_max_outlined),
             label: "Desenvolvimento",
              
             ),
            BottomNavigationBarItem(
             icon: Icon(Icons.home_max_outlined),
             label: "Crescimento",
              
             ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "Configurações",
              
              ),
          ]);
        }
      ),
      body: PageView(
        controller: store.pageViewController,
        children: [
          Column(children: [
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height /5,
              child: Row(
                children: [
                  Text("Olá, "),
                  Text(reg.controllerName.text)
                ],
              ),
            ),
            SizedBox(
              
              height: 200,
              width: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                color: Colors.red,
              ),
              
              )
          ]),
          const PerfilPage(),
          const DesenvolvimentoPage(),
          const CrescimentoPage(),
          const ConfiguracoesPage()

        ],
      ),
      
    );
  }
}