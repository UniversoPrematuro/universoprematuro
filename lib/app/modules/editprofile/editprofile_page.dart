import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/models/perfil_model.dart';
// import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
  final PerfilModel perfil = PerfilModel();

  var maskDate = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskGage = MaskTextInputFormatter(
      mask: 'Semanas: ##, Dias: ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: 
          LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 101, 187, 88), Color.fromARGB(255, 12, 183, 86)])),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(children: [
                Text("Mamãe, ${reg.controllerNameMother.text}", style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),),
                const Text("Hora de preencher o perfil do seu bebê!",style: TextStyle(
                  color: Color.fromARGB(255, 247, 202, 165),
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),),
                const SizedBox(height: 30),
                Observer(
                  builder: (_) {
                  return Center(
                    child: CircleAvatar(
                      radius: 65,
                      
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(store.urlImagemRec),
                      
                      ));
                  }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text("Câmera",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        store.recuperarImg("camera");
                      },
                    ),
                    TextButton(
                      child: const Text("Galeria",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        store.recuperarImg("galeria");
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height/2.5,
                  width: 390,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.white,
                      child: 
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: store.controllerNameChild,
                                decoration: InputDecoration(
                                  labelText: 'Nome',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextField(
                                inputFormatters: [maskDate],
                                controller: store.controllerBirthChild,
                                decoration: InputDecoration(
                                  labelText: 'Nascimento',
                                  hintText: "DD/MM/AAAA",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextField(
                                inputFormatters: [maskGage],
                                controller: store.controllerGesAge,
                                decoration: InputDecoration(
                                  labelText: 'Idade Gestacional',
                                  hintText: "Semanas: ##, Dias: ##",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Masculino", style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 101, 187, 88)
                                    )),
                                    Observer(builder: (_){
                                      return Radio(
                                      value: "masculino",
                                      toggleable: true,
                                      groupValue: store.escolhaUser, 
                                      onChanged: (String?  escolha){
                                        store.escolhaUser = escolha!;
                                      });
                                    }),

                                    const Text("Feminino",style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 255, 193, 143)
                                    )),
                                    Observer(
                                      builder: (_) {
                                      return Radio(
                                        value: "feminino",
                                        toggleable: true,
                                        groupValue: store.perfil.gender, 
                                        onChanged: (String? escolha){
                                          store.escolhaUser = escolha!;
                                        });
                                      }
                                    ),
                                ]),
                              ),
                            ],
                          ),
                        )
                      
                    ),
                    
                  ), 
                ),
                Center(
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(store.urlImagemRec),
                    
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text("Câmera",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        store.recuperarImg("camera");
                      },
                    ),
                    TextButton(
                      child: const Text("Galeria",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        store.recuperarImg("galeria");
                      },
                    ),
                  ],
                ),
               Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.white,
                      child: 
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // TextField(
                              //   controller: store.controllerNameMother,
                              //   decoration: InputDecoration(
                              //     labelText: 'Nome',
                              //     border: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(20)
                              //     )
                              //   ),
                              // ),
                              // const SizedBox(height: 10),
                              // TextField(
                              //   controller: store.controllerBirth,
                              //   decoration: InputDecoration(
                              //     labelText: 'Nascimento',
                              //     hintText: "DD/MM/AAAA",
                              //     border: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(20)
                              //     )
                              //   ),
                              // ),
                              // const SizedBox(height: 10),
                              // TextField(
                              //   controller: store.controllerGesAge,
                              //   decoration: InputDecoration(
                              //     labelText: 'Idade Gestacional',
                              //     hintText: 'Semanas: ##, Dias: ##',
                              //     border: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(20)
                              //     )
                              //   ),
                              // ),
                              
                              
                            ],
                          ),
                        )
                      
                    ),
                  ), 
                

                
              ],
            ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ))
                ),
                onPressed: (){
                  
                  store.saveData();
                }, 
                child: Text("Salvar dados", style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.w500 
                ),)
                              
                )
            ],
          ),
        ),
      ),
    );
  }
}