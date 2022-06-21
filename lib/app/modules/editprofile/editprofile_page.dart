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
        title: const Text('Editar Perfil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(children: [
              Text("Olá, ${reg.controllerName.text}"),
              const Text("Hora de preencher o perfil do seu bebê!"),
              const SizedBox(height: 30),
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
                        style: TextStyle(color: Colors.green)),
                    onPressed: () {
                      store.reuperarImg("camera");
                    },
                  ),
                  TextButton(
                    child: const Text("Galeria",
                        style: TextStyle(color: Colors.green)),
                    onPressed: () {
                      store.reuperarImg("galeria");
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height/2.8,
                width: 390,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.red,
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
                              controller: store.controllerBirth,
                              decoration: InputDecoration(
                                labelText: 'Nascimento',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: store.controllerGesAge,
                              decoration: InputDecoration(
                                labelText: 'Idade Gestacional',
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
                        ),
                      )
                    
                  ),
                ), 
              ),
              const Center(child: CircleAvatar(radius: 65)),
              const SizedBox(height: 20),
             Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.red,
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
                              controller: store.controllerBirth,
                              decoration: InputDecoration(
                                labelText: 'Nascimento',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: store.controllerGesAge,
                              decoration: InputDecoration(
                                labelText: 'Idade Gestacional',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                            ),
                            ElevatedButton(onPressed: (){
                              Modular.to.pushNamed('/perfil');
                            }, 
                            child: Text("Perfil")
                            
                            )
                          ],
                        ),
                      )
                    
                  ),
                ), 
              

              
            ],)
          ],
        ),
      ),
    );
  }
}