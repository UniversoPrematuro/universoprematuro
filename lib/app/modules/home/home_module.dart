import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';
import '../home/home_store.dart'; 

import 'home_page.dart';
 
class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.lazySingleton((i) => RegisterStore())
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute('/home', child: (_, args) => HomePage()),
   ChildRoute('/perfil', child: (_, args) => PerfilPage())
 ];
}