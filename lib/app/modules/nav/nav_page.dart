import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_page.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_page.dart';
import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_page.dart';
import 'package:universoprematuro/app/modules/home/home_module.dart';
import 'package:universoprematuro/app/modules/home/home_page.dart';
import 'package:universoprematuro/app/modules/nav/nav_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_page.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

class NavPage extends StatefulWidget {
  final String title;
  const NavPage({Key? key, this.title = 'NavPage'}) : super(key: key);
  @override
  NavPageState createState() => NavPageState();
}
class NavPageState extends State<NavPage> {
  final NavStore store = Modular.get();
  final RegisterStore reg = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBuilder(
        
        animation: store.pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: store.pageViewController.page?.round() ?? 0,
            
            onTap: (index){
              
              store.pageViewController.jumpToPage(index);
            },
            items: const [
          
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil",
              
              ),
            BottomNavigationBarItem(
             icon: Icon(Icons.home_max_outlined),
             label: "Desenvolvimento",
              
             ),
            BottomNavigationBarItem(
             icon: Icon(Icons.home_max_outlined),
             label: "Crescimento",
              
             ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "Configurações",
              
              ),
            ]
          );
        }
      ),
      
      body: PageView(
        controller: store.pageViewController,
        children: [
          Container(
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
                            "Olá, \n", 
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 48, 47, 47)
                              )),
                              Container(
                                margin: const EdgeInsets.only(top: 25),
                                child: Text(reg.controllerNameMother.text,
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
                            child: Text('O projeto “Universo Prematuro” envolve uma ferramenta '
                                        'digital para oferecer o melhor cuidado longitudinal de '
                                        'crianças nascidas prematuras (idade gestacional menor que'
                                        ' 37 semanas) no período pós-alta hospitalar. '
                                        'Os primeiros anos de vida é reconhecido como o período '
                                        'alvo para alcançar melhores habilidades motoras, '
                                        'cognitivas e psicossociais. Os estímulos direcionados '
                                        'corretamente do ambiente, do meio social e familiar, para'
                                        ' as crianças após o nascimento favorecem para o '
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
          ),),
          PerfilPage(),
          DesenvolvimentoPage(),
          CrescimentoPage(),
          ConfiguracoesPage()
        ],
      )
    );
  }
}