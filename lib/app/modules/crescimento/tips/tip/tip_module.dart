
import 'package:universoprematuro/app/modules/crescimento/tips/tip/tip_Page.dart';
import 'package:universoprematuro/app/modules/crescimento/tips/tip/tip_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TipModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TipStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/tip1', child: (_, args) => TipPage())
  ];
}
