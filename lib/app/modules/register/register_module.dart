import 'package:universoprematuro/app/modules/register/register_Page.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/register', child: (_, args) => RegisterPage()),
  ];
}
