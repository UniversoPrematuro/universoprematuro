import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';

import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';
import '../bottomnavbar/bottomnavbar_Page.dart';
import '../bottomnavbar/bottomnavbar_module.dart';
import '../bottomnavbar/bottomnavbar_store.dart';
import '../configuracoes/configuracoes_Page.dart';
import '../crescimento/crescimento_page.dart';
import '../crescimento/crescimento_store.dart';
import '../desenvolvimento/desenvolvimento_page.dart';
import '../desenvolvimento/desenvolvimento_store.dart';
import '../home/home_store.dart'; 


import 'home_page.dart';
 
class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => DesenvolvimentoStore()),
    Bind.lazySingleton((i) => CrescimentoStore()),
    Bind.lazySingleton((i) => BottomnavbarStore()),
    Bind.lazySingleton((i) => BottomnavbarModule()),
    Bind.lazySingleton((i) => UserModel())
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute('/home', child: (_, args) => const HomePage()),
   ChildRoute('/perfil', child: (_, args) => const PerfilPage()),
   ChildRoute('/desenvolvimento', child: (_, args) => const DesenvolvimentoPage()),
   ChildRoute('/crescimento', child: (_, args) => const CrescimentoPage()),
   ChildRoute('/configuracoes', child: (_, args) => const ConfiguracoesPage()),
   ChildRoute('/navbar', child: (_, args) => const BottomnavbarPage()),
 ];
}