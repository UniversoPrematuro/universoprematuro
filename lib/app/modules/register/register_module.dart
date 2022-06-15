import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/register/register_Page.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../editprofile/editprofile_page.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.lazySingleton((i) => UserModel()),
    Bind.lazySingleton((i) => EditprofileStore)
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/register', child: (_, args) => RegisterPage()),
    ChildRoute('/editprofile', child: (_, args) => EditprofilePage()),
  ];
}
