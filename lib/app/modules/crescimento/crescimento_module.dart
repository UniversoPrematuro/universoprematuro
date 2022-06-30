import 'package:universoprematuro/app/modules/crescimento/crescimento_Page.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/crescimento/tips/tip/tip_module.dart';
import 'package:universoprematuro/app/modules/crescimento/tips/tips_module.dart';
import 'package:universoprematuro/app/modules/crescimento/tips/tips_page.dart';
import 'package:universoprematuro/app/modules/nav/nav_page.dart';
import 'package:universoprematuro/app/modules/nav/nav_store.dart';



import '../editprofile/editprofile_store.dart';
import '../register/register_store.dart';

class CrescimentoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CrescimentoStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => EditprofileStore()),
    Bind.lazySingleton((i) => NavStore()),
    Bind.lazySingleton((i) => TipsModule()),
    Bind.lazySingleton((i) => TipModule()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/crescimento', child: (_, args) => const CrescimentoPage()),
    ChildRoute('/nav', child: (_, args) => const NavPage()),
    ChildRoute('/tip', child: (_, args) => const TipsPage()),
    // ChildRoute('/tip1', child: (_, args) => const Tip1Page()),
  ];
}
