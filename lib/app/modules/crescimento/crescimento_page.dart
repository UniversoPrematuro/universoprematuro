import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/crescimento/crescimento_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/crescimento/widgets/bar.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_store.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

class CrescimentoPage extends StatefulWidget {
  final String title;
  const CrescimentoPage({Key? key, this.title = 'CrescimentoPage'}) : super(key: key);
  @override
  CrescimentoPageState createState() => CrescimentoPageState();
}
class CrescimentoPageState extends State<CrescimentoPage> {
  final CrescimentoStore store = Modular.get();
  final RegisterStore reg = Modular.get();
  final EditprofileStore ep = Modular.get();
  UserModel user = UserModel();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Padding(
                           padding: EdgeInsets.only(top: 120),
                           child:  Text(
                        "Dicas inicias para as mamães!",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),                    
                ),
                Image.asset("images/rest/Personagemai.png", width: 150, height: 150),
                 Center(
                  child: SizedBox(
                    width: 350,
                    height: 610,
                    child: Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                      elevation: 20,
                      color: Colors.white,
                      child:  Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Observer(
                          builder: (_){
                          return Text(
                            '' 'Mamãe! '
                                'Escolha um ambiente agradável, tranquilo e calmo. Um ambiente '
                                'que você se sinta confortável;\n\n'
                                'Se você  gostar de música, coloque uma música relaxante, '
                                'que acalme. Isso vai te ajudar a amamentar;\n\n'
                                'Seja persistente na amamentação, não desista!\n\n'
                                'É um momento único, de amor e afeto, aproveita e '
                                'converse com ${ep.controllerNameChild.text} e demonstre todo o seu carinho. Se a '
                                'família puder paticipar durante esse momento, conte com o apoio '
                                'e carinho deles também. Você vai sentir mais forte e confiante;\n\n'
                                'Tenha confiança! Evite o estresse, ansiedade e sentimentos '
                                'negativos, pois isso pode interferir na saída do leite;\n\n'
                                'Caso tenha dificuldade em amamentar ${ep.controllerNameChild.text}, mesmo após o'
                                ' uso do aplicativo Universo Prematuro, procure ajuda! Você não '
                                'está sozinha. Procure a Unidade Básica de Saúde mais próxima de '
                                'sua casa, você vai encontrar profissionais capacitados para lhe '
                                'orientar, para que você consiga continuar amamentando.',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                            );
                          }
                        ),
                      )
                    )
                  )
                ),
               
                SingleChildScrollView(
                      padding: const EdgeInsets.all(70),
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
  
              ]
            ),
          ),
        ),
      )
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
