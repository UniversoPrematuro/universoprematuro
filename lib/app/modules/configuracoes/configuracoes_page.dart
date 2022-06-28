import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_store.dart';
import 'package:flutter/material.dart';

class ConfiguracoesPage extends StatefulWidget {
  final String title;
  const ConfiguracoesPage({Key? key, this.title = 'ConfiguracoesPage'}) : super(key: key);
  @override
  ConfiguracoesPageState createState() => ConfiguracoesPageState();
}
class ConfiguracoesPageState extends State<ConfiguracoesPage> {
  final ConfiguracoesStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Column(
        children: <Widget>[
          Center(child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.079,
            color: Colors.orange[100],
            child: ElevatedButton(onPressed: (){
              Modular.to.pushNamed('/editprofile');
          }, child: const Text("Editar Perfil"))
          ),)
        ],
      ),
    );
  }
}