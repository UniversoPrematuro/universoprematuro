import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_store.dart';
import 'package:flutter/material.dart';

class DesenvolvimentoPage extends StatefulWidget {
  final String title;
  const DesenvolvimentoPage({Key? key, this.title = 'Desenvolvimento'}) : super(key: key);
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
         centerTitle: true,
         backgroundColor:  Color.fromARGB(255, 255, 193, 143),
         elevation: 0,
       ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color:  Color.fromARGB(255, 255, 193, 143)
        ),
        child: GridView.count(
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
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ))
                
                ),
              child: const Text("1 - 3 Meses", style: TextStyle(color:  Colors.green),)
              
              ),
              ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, "/tasktwo");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ))
                
                ),
              child: const Text("4 - 7 Meses", style: TextStyle(color:  Colors.green))
              
              ),
              ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ))
                
                ),
              child: const Text("8 - 12 Meses", style: TextStyle(color:  Colors.green))
              
              ),
          ]
        )
    ));
  }
}