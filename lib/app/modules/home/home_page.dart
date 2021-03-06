

// ignore_for_file: unused_import, library_private_types_in_public_api

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:universoprematuro/app/modules/configuracoes/configuracoes_page.dart';
import 'package:universoprematuro/app/modules/home/home_store.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/nav/nav_store.dart';
// import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

import '../editprofile/editprofile_store.dart';
import '../nav/nav_Page.dart';


// import '../crescimento/crescimento_page.dart';
// import '../desenvolvimento/desenvolvimento_page.dart';


class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  final HomeStore store = Modular.get();
  final RegisterStore reg = Modular.get();
  final EditprofileStore ed = Modular.get();
  final NavPage nav = const NavPage();
  var user = UserModel();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: nav,
      // bottomNavigationBar: AnimatedBuilder(
        
      //   animation: store.pageViewController,
      //   builder: (context, snapshot) {
      //     return BottomNavigationBar(
      //       type: BottomNavigationBarType.fixed,
      //       currentIndex: store.pageViewController.page?.round() ?? 0,
      //       onTap: (index){
      //         store.pageViewController.jumpToPage(index);
      //       },
      //       items: const [
          
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home_filled),
      //         label: "Home",
              
      //         ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: "Perfil",
              
      //         ),
      //       BottomNavigationBarItem(
      //        icon: Icon(Icons.home_max_outlined),
      //        label: "Desenvolvimento",
              
      //        ),
      //       BottomNavigationBarItem(
      //        icon: Icon(Icons.home_max_outlined),
      //        label: "Crescimento",
              
      //        ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.settings_rounded),
      //         label: "Configura????es",
              
      //         ),
      //     ]);
      //   }
      // ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // controller: store.pageViewController,
        //  children: [ 
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 61),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Text(
                            "Ol??, \n", 
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 48, 47, 47)
                              )),
                              Container(
                                margin: const EdgeInsets.only(top: 25),
                                child: Text(ed.controllerNameChild.text,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500
                                ),
                                ),
                              )
                              
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(2),
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                            elevation: 20,
                            color: Colors.white,
                            child: Column(children: [
                              Image.asset('images/buttons/BotaoUP.png',width: 100, height: 92,),
                              TextButton(
                                onPressed: (){},
                                child: const Text('O Projeto', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                              ) 
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                            elevation: 50,
                            color: Colors.white,
                            child: Column(children: [
                              Image.asset('images/buttons/BotaoUP.png',width: 100, height: 92,),
                              TextButton(
                                onPressed: (){},
                                child: const Text('O Projeto', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                              ) 
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                            elevation: 20,
                            color: Colors.white,
                            child: Column(children: [
                              Image.asset('images/buttons/BotaoUP.png',width: 100, height: 92,),
                              TextButton(
                                onPressed: (){},
                                child: const Text('O Projeto', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                              ) 
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                            elevation: 20,
                            color: Colors.white,
                            child: Column(children: [
                              Image.asset('images/buttons/BotaoUP.png',width: 100, height: 92,),
                              TextButton(
                                onPressed: (){},
                                child: const Text('O Projeto', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                              ) 
                            ]),
                          ),
                        ),
                      ],
                    )
                    ),
                      Center(
                        child: SizedBox(
                          width: 350,
                          height: 420,
                          child: Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                            elevation: 20,
                            color: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                            child: Text('O projeto ???Universo Prematuro??? envolve uma ferramenta '
                                        'digital para oferecer o melhor cuidado longitudinal de '
                                        'crian??as nascidas prematuras (idade gestacional menor que'
                                        ' 37 semanas) no per??odo p??s-alta hospitalar. '
                                        'Os primeiros anos de vida ?? reconhecido como o per??odo '
                                        'alvo para alcan??ar melhores habilidades motoras, '
                                        'cognitivas e psicossociais. Os est??mulos direcionados '
                                        'corretamente do ambiente, do meio social e familiar, para'
                                        ' as crian??as ap??s o nascimento favorecem para o '
                                        'desenvolvimento integral, que otimiza o potencial para a '
                                        'vida adulta.',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                    
              )
            ],
            
            
            ),
          ),
        //   const HomePage(),
        //   const PerfilPage(),
        //   const DesenvolvimentoPage(),
        //   const CrescimentoPage(),
        //   const ConfiguracoesPage()

        //  ]
      ),
    );
  }
}