import 'package:universoprematuro/app/modules/crescimento/crescimento_Page.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CrescimentoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CrescimentoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CrescimentoPage()),
  ];
}
