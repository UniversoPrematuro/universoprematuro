import 'package:universoprematuro/app/modules/configuracoes/configuracoes_page.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_page.dart';
import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_page.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_page.dart';
import 'package:universoprematuro/app/modules/home/home_page.dart';
import 'package:universoprematuro/app/modules/login/login_page.dart';
import 'package:universoprematuro/app/modules/nav/nav_Page.dart';
import 'package:universoprematuro/app/modules/nav/nav_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';
import 'package:universoprematuro/app/modules/register/register_page.dart';

import '../configuracoes/configuracoes_store.dart';
import '../crescimento/crescimento_store.dart';
import '../desenvolvimento/desenvolvimento_store.dart';
import '../editprofile/editprofile_store.dart';
import '../home/home_store.dart';
import '../perfil/perfil_store.dart';

class NavModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => NavStore()),
    Bind.singleton((i) => HomeStore()),
    Bind.singleton((i) => PerfilStore()),
    Bind.singleton((i) => DesenvolvimentoStore()),
    Bind.singleton((i) => CrescimentoStore()),
    Bind.singleton((i) => ConfiguracoesStore()),
    Bind.singleton((i) => EditprofileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/nav', child: (_, args) => const NavPage()),
    ChildRoute('/login', child: (_, args) => const LoginPage()),
    ChildRoute('/register', child: (_, args) => const RegisterPage()),
    ChildRoute('/home', child: (_, args) => const HomePage()),
    ChildRoute('/editprofile', child: (_, args) => const EditprofilePage()),
    ChildRoute('/perfil', child: (_, args) => const PerfilPage()),
    ChildRoute('/desenvolvimento', child: (_, args) => const DesenvolvimentoPage()),
    ChildRoute('/crescimento', child: (_, args) => const CrescimentoPage()),
    ChildRoute('/configuracoes', child: (_, args) => const ConfiguracoesPage()),
  ];

}
