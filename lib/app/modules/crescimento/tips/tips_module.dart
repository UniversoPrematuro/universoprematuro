
import 'package:universoprematuro/app/modules/crescimento/tips/tip/tip_Page.dart';
import 'package:universoprematuro/app/modules/crescimento/tips/tips_Page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class TipsModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/tip', child: (_, args) => TipsPage()),
    ChildRoute('/tip1', child: (_, args) => TipPage()),
  ];
}
