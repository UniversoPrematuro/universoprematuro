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
          color: const Color.fromARGB(255, 101, 187, 88),
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
                    height: MediaQuery.of(context).size.height/2,
                    child: Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                      elevation: 20,
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                            '' 'Mamãe! \n'
                                'O crescimento saudável é alcançado com uma alimentação adequada  '
                                'principalmente nos dois primeiros anos de vida. O aleitamento '
                                'materno surge como uma estratégia eficiente de nutrição, proteção,'
                                ' vínculo e afeto. O leite materno contém todos os nutrientes '
                                'essenciais para o crescimento e o desenvolvimento da criança. '
                                'Mesmo quando a amamentação não é possível, algumas estratégias '
                                'podem servir de aliadas neste processo de transição para a fórmula'
                                ' infantil.''O crescimento saudável é alcançado com uma alimentação adequada  '
                                'principalmente nos dois primeiros anos de vida. Preparamos um material para auxiliá-la nesse processo.',
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 35, 85, 24)
                              ),
                            )
                          ),
                      )
                    )
                  ),
                

                const Center(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "Preparamos um material de fácil entendimento para que "
                      "você possa sanar suas dúvidas a respeito de amamentação e/ou "
                      "oferecimento da fórmula!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                  ),
                ),

                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    fixedSize: MaterialStateProperty.all(Size.fromWidth(320)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                    
                  ),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/crescimento/tip');
                  }, 
                  child: const Text(
                    "Navegar até o material!",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600
                    ),
                    
                    )),
               
                SizedBox(height: 100)
  
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
