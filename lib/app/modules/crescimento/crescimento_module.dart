import 'package:universoprematuro/app/modules/crescimento/crescimento_Page.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../editprofile/editprofile_store.dart';
import '../register/register_store.dart';

class CrescimentoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CrescimentoStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => EditprofileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CrescimentoPage()),
  ];
}
