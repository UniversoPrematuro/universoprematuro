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
      body: GridView.count(
          padding: const EdgeInsets.all(10.0),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, "/taskone");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ))
                
                ),
              child: const Text("1 - 3 Meses")
              
              ),
          ]
        ),
    );
  }
}
/*
Column(
        children: <Widget>[
          Center(child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.1,
            color: Colors.green,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: <Widget>[
                
              ]
              )
          ),)
        ],
      )

 */
