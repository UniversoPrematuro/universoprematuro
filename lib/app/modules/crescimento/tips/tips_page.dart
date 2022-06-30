import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/nav/nav_page.dart';

class TipsPage extends StatefulWidget {
  final String title;
  const TipsPage({Key? key, this.title = 'Crescimento'}) : super(key: key);
  @override
  TipsPageState createState() => TipsPageState();
}
class TipsPageState extends State<TipsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 254, 187, 132),
      //   elevation: 0,
      //   centerTitle: true,
      //   title: const Text("Crescimento"),
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back_ios_new),
      //     onPressed: (){
      //       Modular.to.pushReplacementNamed('/home/nav/crescimento');
      //     }
      //   ),
      // ),
            
      // LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       colors: [Color.fromARGB(255, 101, 187, 88), Color.fromARGB(255, 12, 183, 86)])),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: 
            LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 254, 187, 132), Color.fromARGB(255, 255, 183, 143)])),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              children: [
                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip1');}, 
                  child: const Text(
                    "Dicas iniciais para as mamães",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){Modular.to.pushNamed('/tip/tip2');}, 
                  child: const Text(
                    "Importância do aleitamento materno",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Cuidados com a mama",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Posições da criança durante o aleitamento",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                    
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Posições da mamãe para amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Pega da criança ao seio - Correta e Incorreta",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Inicio da mamada",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Passo a passo para a amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Aleitamento materno em livre demanda",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    
                    )),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Técnicas que auxiliam a amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Principais problemas relacionados a mama",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Final da mamada",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),


                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Verdades e mitos sobre a amamentação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Retorno ao trabalho",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Perguntas sobre a amamentação e o uso do app",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Amamentação/fórmula e a introdução a alimentos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),

                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Amamentação/fórmula e a introdução a alimentos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                    )),
                
                
                
                
                




                    SizedBox(
                  height: 50, 
                  child: OutlinedButton(
                    onPressed: (){
                    Modular.to.pushNamed("/home/nav");
                  },
                  child: Text("Home")
                  ),
                ),

                 
                const SizedBox(height: 100)
              ],
              
              ),
          ),
        ),
      )
      
      
    );
  }
}

// Container(
//        width: MediaQuery.of(context).size.width,
//        height: MediaQuery.of(context).size.height,
//        decoration: const BoxDecoration(
//          gradient: 
//          LinearGradient(
//            begin: Alignment.topCenter,
//            end: Alignment.bottomCenter,
//            colors: [Color.fromARGB(255, 254, 187, 132), Color.fromARGB(255, 255, 183, 143)])),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               GridView.count(
//                 crossAxisCount: 4,

//                 children: [
//                   ElevatedButton(
//               style: ButtonStyle(
//                 fixedSize: MaterialStateProperty.all(Size.fromWidth(55)),
//                 maximumSize: MaterialStateProperty.all(Size.fromHeight(5))
//               ),
//               onPressed: (){}, 
//               child: Text("OI"))
//                 ],
                
//                 )
            
//           ]),
//         ),

//       )