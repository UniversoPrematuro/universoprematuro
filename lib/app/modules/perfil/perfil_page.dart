import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:universoprematuro/app/modules/home/home_page.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/nav/nav_page.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

class PerfilPage extends StatefulWidget {
  final String title;
  const PerfilPage({Key? key, this.title = 'PerfilPage'}) : super(key: key);
  @override
  PerfilPageState createState() => PerfilPageState();
}
class PerfilPageState extends State<PerfilPage> {
  final PerfilStore store = Modular.get();
  UserModel user = UserModel();
  final RegisterStore stores = Modular.get();
  final EditprofileStore ep = Modular.get();

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
          length: 2,
          child: Scaffold(
        //   appBar: AppBar(
        //     title: const Text("Perfil"),
        //     backgroundColor: Colors.green,
        //     centerTitle: true,
        //     elevation: 2,
        //     actions: [IconButton(
        //       icon:const Icon(Icons.door_back_door_outlined),
        //       onPressed: (() {
        //         FirebaseAuth.instance.signOut();
        //         Navigator.pushReplacementNamed(context, "/login");

        //         }
        //       )
        //     )
        //   ],
        // ),

           body: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(

                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32)),
                ),
                
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              children:  <Widget>[
                                Text('Nome: ${stores.controllerNameMother.text} ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text('Mãe: ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text('Aniversario: ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text('Aniversario: ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                              
                              
                            ),
                            
                          ),
            
                             Padding(
                               padding: EdgeInsets.only(/*left: 88, bottom: 200*/),
                               child: CircleAvatar(
                               radius: 55,
                               backgroundColor: Colors.black,
                               backgroundImage: NetworkImage(ep.urlImagemRec),
                              //  backgroundImage: NetworkImage(),
                                 ),
                                ),
                                ElevatedButton(onPressed: (){Modular.to.pushReplacementNamed("/home");}, child: Text("Editar"))
                              ],
                            ),
                          ]
                        ),
                      )
                    )
                  ),
                  const TabBar(
                    labelColor: Colors.green,
                   indicator:  UnderlineTabIndicator(
                     borderSide: BorderSide(width: 2.5, color: Colors.green),
                     insets: EdgeInsets.symmetric(horizontal: 30.0),
                     
                   ),
                   indicatorColor: Colors.green,
                   tabs: [
                     Tab(
                       text: "Fotos",
                       
                       ),
                     Tab(
                       text: "Videos",
                       ),
                   ],
                   
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/2.2,
                  child: TabBarView(
                    children: [
                      GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: const Text('Heed not the rabble'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[300],
                          child: const Text('Sound of screams but the'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[400],
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[500],
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ),
                      GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: const Text('Heed not the rabble'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[300],
                          child: const Text('Sound of screams but the'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[400],
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[500],
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ),
                ],
              ),    
            ),        
          ],  
        ),
        
      )
    );
  }
}

