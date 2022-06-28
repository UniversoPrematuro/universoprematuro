import 'package:universoprematuro/app/modules/configuracoes/configuracoes_Page.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../editprofile/editprofile_page.dart';
import '../editprofile/editprofile_store.dart';

class ConfiguracoesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ConfiguracoesStore()),
    Bind.lazySingleton((i) => EditprofileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ConfiguracoesPage()),
    ChildRoute('/editprofile', child: (_, args) => const EditprofilePage()),
  ];
}
