import 'package:universoprematuro/app/modules/editprofile/editprofile_Page.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/models/perfil_model.dart';
import 'package:universoprematuro/app/modules/navbar/navbar_store.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

import '../home/home_page.dart';
import '../navbar/navbar_Page.dart';
import '../perfil/perfil_Page.dart';
import '../perfil/perfil_store.dart';

class EditprofileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditprofileStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.singleton((i) => PerfilModel()),
    // Bind.singleton((i) => NavbarStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/editprofile', child: (_, args) => EditprofilePage()),
    ChildRoute('/perfil', child: (_, args) => PerfilPage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
    // ChildRoute('/navbar', child: (_, args) => NavbarPage()),
  ];
}
