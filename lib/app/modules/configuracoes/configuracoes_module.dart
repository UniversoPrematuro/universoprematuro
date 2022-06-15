import 'package:universoprematuro/app/modules/configuracoes/configuracoes_Page.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfiguracoesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ConfiguracoesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ConfiguracoesPage()),
  ];
}
