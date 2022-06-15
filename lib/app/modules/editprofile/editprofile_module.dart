import 'package:universoprematuro/app/modules/editprofile/editprofile_Page.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/models/perfil_model.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

class EditprofileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EditprofileStore()),
    Bind.lazySingleton((i) => RegisterStore()),
    Bind.singleton((i) => PerfilModel())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/editprofile', child: (_, args) => EditprofilePage()),
  ];
}
