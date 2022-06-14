import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/home/home_store.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  final HomeStore store = Modular.get();





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
          Container(child: Text('o2'),),
          PerfilPage(),
          Container(child:const Text("3")),
          Container(child: Text("4")),
          Container(child: Text("5")),

        ],
      ),
      
    );
  }
}