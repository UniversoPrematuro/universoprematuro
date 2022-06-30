import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip1_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip2_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip3_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip4_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip5_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip6_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip7_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/tip8_page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/tip_Page.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/tip_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TipModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TipStore()),
    Bind.lazySingleton((i) => const Tip1Page()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/tip', child: (_, args) => const TipPage()),
    ChildRoute('/tip1', child: (_, args) => const Tip1Page()),
    ChildRoute('/tip2', child: (_, args) => const Tip2Page()),
    ChildRoute('/tip3', child: (_, args) => const Tip3Page()),
    ChildRoute('/tip4', child: (_, args) => const Tip4Page()),
    ChildRoute('/tip5', child: (_, args) => const Tip5Page()),
    ChildRoute('/tip6', child: (_, args) => const Tip6Page()),
    ChildRoute('/tip7', child: (_, args) => const Tip7Page()),
    ChildRoute('/tip8', child: (_, args) => const Tip8Page()),
  ];
}
