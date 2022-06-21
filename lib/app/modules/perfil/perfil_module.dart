import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_Page.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

import '../home/home_store.dart';

class PerfilModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.singleton((i) => UserModel()),
    Bind.singleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/perfil', child: (_, args) => PerfilPage()),
  ];
}
