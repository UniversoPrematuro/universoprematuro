import 'package:universoprematuro/app/modules/editprofile/editprofile_Page.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/models/perfil_model.dart';
import 'package:universoprematuro/app/modules/nav/nav_store.dart';

import 'package:universoprematuro/app/modules/register/register_store.dart';

import '../home/home_page.dart';
import '../nav/nav_Page.dart';
import '../perfil/perfil_Page.dart';
import '../perfil/perfil_store.dart';

class EditprofileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditprofileStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.singleton((i) => PerfilModel()),
    Bind.singleton((i) => NavStore()),
    Bind.singleton((i) => NavPage()),

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/editprofile', child: (_, args) => const EditprofilePage()),
    ChildRoute('/perfil', child: (_, args) => const PerfilPage()),
    ChildRoute('/home', child: (_, args) => const HomePage()),
    ChildRoute('/nav', child: (_, args) => const NavPage()),
  ];
}
