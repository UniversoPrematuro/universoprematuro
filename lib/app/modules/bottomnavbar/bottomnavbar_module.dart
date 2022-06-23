import 'package:universoprematuro/app/modules/bottomnavbar/bottomnavbar_Page.dart';
import 'package:universoprematuro/app/modules/bottomnavbar/bottomnavbar_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BottomnavbarModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BottomnavbarStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/navbar', child: (_, args) => BottomnavbarPage()),
  ];
}
