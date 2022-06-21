import 'package:universoprematuro/app/modules/editprofile/editprofile_page.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:universoprematuro/app/modules/home/home_page.dart';
import 'package:universoprematuro/app/modules/home/home_store.dart';
import 'package:universoprematuro/app/modules/initial/initial_Page.dart';
import 'package:universoprematuro/app/modules/initial/initial_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/login/login_page.dart';
import 'package:universoprematuro/app/modules/login/login_store.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
import 'package:universoprematuro/app/modules/register/register_page.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

import '../configuracoes/configuracoes_Page.dart';
import '../crescimento/crescimento_Page.dart';
import '../desenvolvimento/desenvolvimento_Page.dart';
import '../perfil/perfil_page.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => PerfilStore()),
    Bind.lazySingleton((i) => EditprofileStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => InitialPage()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
    ChildRoute('/register', child: (_, args) => RegisterPage()),
    ChildRoute('/home', child: (_, args) => HomePage()),
    ChildRoute('/editprofile', child: (_, args) => EditprofilePage()),
    ChildRoute('/perfil', child: (_, args) => PerfilPage()),
    ChildRoute('/desenvolvimento', child: (_, args) => DesenvolvimentoPage()),
    ChildRoute('/crescimento', child: (_, args) => CrescimentoPage()),
    ChildRoute('/configuracoes', child: (_, args) => ConfiguracoesPage()),
  ];
}
