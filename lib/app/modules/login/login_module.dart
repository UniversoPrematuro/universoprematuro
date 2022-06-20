import 'package:universoprematuro/app/modules/home/home_page.dart';
import 'package:universoprematuro/app/modules/home/home_store.dart';
import 'package:universoprematuro/app/modules/login/login_Page.dart';
import 'package:universoprematuro/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';

import '../perfil/perfil_store.dart';
import '../register/register_store.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.singleton((i) => UserModel())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, args) => LoginPage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}
