import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter/material.dart';

import '../register/register_store.dart';

class EditprofilePage extends StatefulWidget {
  final String title;
  const EditprofilePage({Key? key, this.title = 'EditprofilePage'}) : super(key: key);
  @override
  EditprofilePageState createState() => EditprofilePageState();
}
class EditprofilePageState extends State<EditprofilePage> {
  final EditprofileStore store = Modular.get();
  final RegisterStore reg = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(children: [
              Text("Olá, ${reg.controllerName.text}\n"),
              const Text("Hora de preencher o perfil do seu bebê!"),
              SizedBox(
                height: MediaQuery.of(context).size.height/4,
                width: 390,
                child: Card(
                  shape: const  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                  ),
                  color: Colors.red,
                  child: 
                    Column(
                      children: [
                        TextField(
                          controller: store.controllerNameChild,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                        )

                        //  Padding(
                        //    padding: const EdgeInsets.only(left: 170),
                        //    child: CircleAvatar(
                        //      backgroundColor: Colors.blue,
                        //      radius: 50,
                        //    ),
                        //  ),
                      ],
                    )
                  
                ), 
              ),
              // SizedBox(height: 40),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height/4,
              //   width: 390,
              //   child: Card(
              //     shape: const  RoundedRectangleBorder(
              //       borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              //     ),
              //     color: Colors.red,
              //     child: 
              //       Row(
              //         children: [
              //          const Padding(
              //            padding: const EdgeInsets.only(right: 170),
              //            child: CircleAvatar(
              //              backgroundColor: Colors.blue,
              //              radius: 50,
              //            ),
              //          ),
              //           Align(
              //             alignment: Alignment.centerLeft,
                          
              //           ),

              //         ],
              //       )
                  
              //   ), 
              // ),

              
            ],)
          ],
        ),
      ),
    );
  }
}