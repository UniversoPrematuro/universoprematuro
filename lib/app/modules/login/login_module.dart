import 'package:universoprematuro/app/modules/home/home_page.dart';
import 'package:universoprematuro/app/modules/home/home_store.dart';
import 'package:universoprematuro/app/modules/login/login_Page.dart';
import 'package:universoprematuro/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../bottomnavbar/bottomnavbar_Page.dart';
import '../bottomnavbar/bottomnavbar_store.dart';
import '../initial/initial_Page.dart';
import '../perfil/perfil_store.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.singleton((i) => BottomnavbarStore()),

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, args) => const LoginPage()),
    ChildRoute('/home', child: (_, args) => const HomePage()),
    ChildRoute('/initial', child: (_, args) => const InitialPage()),
    ChildRoute('/navbar', child: (_, args) => const BottomnavbarPage()),
  ];
}
