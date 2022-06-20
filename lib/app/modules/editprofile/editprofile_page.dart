import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/home/home_page.dart';

import '../register/register_store.dart';

class EditprofilePage extends StatefulWidget {
  final String title;
  const EditprofilePage({Key? key, this.title = 'Editar Perfil'}) : super(key: key);
  @override
  EditprofilePageState createState() => EditprofilePageState();
}
class EditprofilePageState extends State<EditprofilePage> {
  final EditprofileStore store = Modular.get();
  final RegisterStore reg = Modular.get();

  _textField({String? labelText, onChanged, Function()? errorText}){
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
        prefixIcon: const Icon(Icons.person_outline_rounded, color: Color.fromARGB(255, 101, 187, 88)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), 
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar Perfil"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Modular.to.popAndPushNamed(
               Modular.initialRoute
               
               );
          },
        ),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(children: [
              Text("Olá, ${reg.controllerName.text}\n"),
              const Text("Hora de preencher o perfil do seu bebê!"),
              Container(
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height/2.5,
                width: 390,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  color: const Color.fromARGB(255, 101, 187, 88),
                  child: 
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          _textField(
                            labelText: "Nome da criança", 
                            errorText: store.validateName,
                            onChanged: store.perfil.changeName
                            ),
    
                          const SizedBox(height: 15),
                          
                        ],
                      ),
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