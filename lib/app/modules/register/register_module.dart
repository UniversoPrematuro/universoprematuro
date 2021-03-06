import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/nav/nav_page.dart';
import 'package:universoprematuro/app/modules/nav/nav_store.dart';

import 'package:universoprematuro/app/modules/register/register_Page.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../editprofile/editprofile_page.dart';
import '../home/home_page.dart';

import '../home/home_store.dart';
import '../perfil/perfil_page.dart';
import '../perfil/perfil_store.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.lazySingleton((i) => UserModel()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => EditprofileStore()),
    Bind.lazySingleton((i) => NavStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/register', child: (_, args) => const RegisterPage()),
    ChildRoute('/home', child: (_, args) => const HomePage()),
    ChildRoute('/perfil', child: (_, args) => const PerfilPage()),
    ChildRoute('/editprofile', child: (_, args) => const EditprofilePage()),
    ChildRoute('/nav', child: (_, args) => const NavPage()),
  ];
}
