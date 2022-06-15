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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Center(child: Text("TESTE CONFIG"))
        ],
      ),
    );
  }
}