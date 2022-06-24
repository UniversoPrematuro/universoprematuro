import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_store.dart';
import 'package:flutter/material.dart';

class CrescimentoPage extends StatefulWidget {
  final String title;
  const CrescimentoPage({Key? key, this.title = 'CrescimentoPage'}) : super(key: key);
  @override
  CrescimentoPageState createState() => CrescimentoPageState();
}
class CrescimentoPageState extends State<CrescimentoPage> {
  final CrescimentoStore store = Modular.get();

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
            height: MediaQuery.of(context).size.height/1.1,
            color: Colors.green,
          ),)
        ],
      ),
    );
  }
}