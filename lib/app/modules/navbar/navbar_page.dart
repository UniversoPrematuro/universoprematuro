// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:universoprematuro/app/modules/navbar/navbar_store.dart';
// import 'package:flutter/material.dart';
// import 'package:universoprematuro/app/modules/perfil/perfil_page.dart'as ew;

// import '../configuracoes/configuracoes_Page.dart';
// import '../crescimento/crescimento_Page.dart';
// import '../desenvolvimento/desenvolvimento_Page.dart';
// import '../home/home_page.dart';
// import '../perfil/perfil_Page.dart';

// class NavbarPage extends StatefulWidget {
//   final String title;
//   const NavbarPage({Key? key, this.title = 'NavbarPage'}) : super(key: key);
//   @override
//   NavbarPageState createState() => NavbarPageState();
// }
// class NavbarPageState extends State<NavbarPage> {
//   final NavbarStore store = Modular.get();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: AnimatedBuilder(
        
//         animation: store.pageViewController,
//         builder: (context, snapshot) {
//           return BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             currentIndex: store.pageViewController.page?.round() ?? 0,
//             onTap: (index){
//               store.pageViewController.jumpToPage(index + 1);
//             },
//             items: const [
          
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home_filled),
//               label: "Home",
              
//               ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: "Perfil",
              
//               ),
//             BottomNavigationBarItem(
//              icon: Icon(Icons.home_max_outlined),
//              label: "Desenvolvimento",
              
//              ),
//             BottomNavigationBarItem(
//              icon: Icon(Icons.home_max_outlined),
//              label: "Crescimento",
              
//              ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings_rounded),
//               label: "Configurações",
              
//               ),
//           ]);
//         }
//       ),
//       body: PageView(
//         controller: store.pageViewController,
//         children:  [
//         HomePage(),
//         PerfilPage(),
//         DesenvolvimentoPage(),
//         CrescimentoPage(),
//         ConfiguracoesPage()
//       ]),
        
  
//     );
//   }
// }

