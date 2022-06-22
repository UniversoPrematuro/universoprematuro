// import 'package:universoprematuro/app/modules/navbar/navbar_Page.dart';
// import 'package:universoprematuro/app/modules/navbar/navbar_store.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:universoprematuro/app/modules/models/user_model.dart';
// import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';
// import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
// import 'package:universoprematuro/app/modules/register/register_store.dart';
// import '../configuracoes/configuracoes_Page.dart';
// import '../crescimento/crescimento_page.dart';
// import '../crescimento/crescimento_store.dart';
// import '../desenvolvimento/desenvolvimento_page.dart';
// import '../desenvolvimento/desenvolvimento_store.dart';
// import '../home/home_page.dart';
// import '../home/home_store.dart'; 


// class NavbarModule extends Module {
//   @override
//   final List<Bind> binds = [
//     Bind.lazySingleton((i) => NavbarStore()),
//     Bind.lazySingleton((i) => HomeStore()),
//     Bind.lazySingleton((i) => PerfilStore()),
//     Bind.lazySingleton((i) => RegisterStore()),
//     Bind.lazySingleton((i) => DesenvolvimentoStore()),
//     Bind.lazySingleton((i) => CrescimentoStore()),
//     Bind.lazySingleton((i) => UserModel())
//   ];

//   @override
//   final List<ModularRoute> routes = [
//     ChildRoute('/', child: (_, args) => NavbarPage()),
//     ChildRoute('/home', child: (_, args) => HomePage()),
//    ChildRoute('/perfil', child: (_, args) => PerfilPage()),
//    ChildRoute('/desenvolvimento', child: (_, args) => DesenvolvimentoPage()),
//    ChildRoute('/crescimento', child: (_, args) => CrescimentoPage()),
//    ChildRoute('/configuracoes', child: (_, args) => ConfiguracoesPage()),
//   ];
// }
