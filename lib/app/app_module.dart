import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_module.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_store.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_module.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:universoprematuro/app/modules/home/home_store.dart';
import 'package:universoprematuro/app/modules/initial/initial_module.dart';
import 'package:universoprematuro/app/modules/initial/initial_store.dart';
import 'package:universoprematuro/app/modules/login/login_module.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_module.dart';
import 'package:universoprematuro/app/modules/register/register_module.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';


import 'modules/home/home_module.dart';
import 'modules/login/login_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitialStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => ConfiguracoesStore()),
    Bind.lazySingleton((i) => EditprofileStore())

  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: InitialModule()),
    ModuleRoute('/register', module: RegisterModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/perfil', module: PerfilModule()),
    ModuleRoute('/editperfil', module: EditprofileModule()),
    ModuleRoute('/configuracoes', module: ConfiguracoesModule())
  ];

}