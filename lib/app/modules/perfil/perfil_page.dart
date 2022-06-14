import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

class PerfilPage extends StatefulWidget {
  final String title;
  const PerfilPage({Key? key, this.title = 'PerfilPage'}) : super(key: key);
  @override
  PerfilPageState createState() => PerfilPageState();
}
class PerfilPageState extends State<PerfilPage> {
  final PerfilStore store = Modular.get();
  UserModel model = UserModel();
  final RegisterStore stores = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Center(child: Container(child: Text('Olá ${stores.controllerName.text}'), color: Colors.red,),)
        ],
      ),
    );
  }
}