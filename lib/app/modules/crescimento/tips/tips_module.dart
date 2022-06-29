import 'package:universoprematuro/app/modules/crescimento/tips/tips_Page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class TipsModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/tip', child: (_, args) => TipsPage()),
  ];
}
