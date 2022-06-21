import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_store.dart';
import 'package:flutter/material.dart';

class DesenvolvimentoPage extends StatefulWidget {
  final String title;
  const DesenvolvimentoPage({Key? key, this.title = 'DesenvolvimentoPage'}) : super(key: key);
  @override
  DesenvolvimentoPageState createState() => DesenvolvimentoPageState();
}
class DesenvolvimentoPageState extends State<DesenvolvimentoPage> {
  final DesenvolvimentoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}