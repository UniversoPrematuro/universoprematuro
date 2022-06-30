import 'package:flutter/material.dart';

class Tip6Page extends StatefulWidget {
  final String title;
  const Tip6Page({Key? key, this.title = 'Tip6Page'}) : super(key: key);
  @override
  Tip6PageState createState() => Tip6PageState();
}
class Tip6PageState extends State<Tip6Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pega da criança ao seio"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Navigator.pushReplacementNamed(context, '/crescimento/tip');
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 10.0,),
          const Text(
            'Pega da criança ao seio - Pega correta(certa) e incorreta (errado)',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0,),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 250.0,
            //height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 101, 188, 89),
                    width: 3.0
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: const Color.fromARGB(255, 101, 188, 89),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Pega correta(certa) - Maneira como a criança abocanha a '
                          'aréola (parte escura da mama)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Boca bem aberta, pega a maior parte escura da mama'
                          ' (aréola);\n\u27A2Parte escura da mama(aréola) deve '
                          'ficar mais visível abaixo do lábio inferior(debaixo)'
                          ' da criança;\n\u27A2Boca deve estar aberta, lábio de'
                          ' cima (superior) virado para cima e lábio inferior'
                          ' voltado para fora (boquinha de peixe);\n\u27A2Queixo'
                          ' da criança encosta na mama e nariz fica livre.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/rest/imagem 09.jpg'),
                const SizedBox(height: 20.0,),
                const Text(
                  'Dicas para pega correta:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2A criança não pode pegar só o bico do peito, '
                          'ela deve abocanhar a maior parte escura da mama '
                          '(aréola);\n\u27A2Levar o bebê a mama e não a mama ao bebê; ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/rest/Gif---1.gif'),
                const SizedBox(height: 10.0,),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Se durante a pega da mama, a criança abocanhar só '
                          'o bico, não puxe a criança da mama. Com o dedo '
                          'mindinho (Mínimo), coloque no canto da boca da '
                          'criança, para que ela largue a mama, e a mamãe '
                          'coloque novamente a criança para amamentar da '
                          'maneira correta;\n\u27A2A criança não deve '
                          'produzir nenhum som ao mamar, somente o de estar '
                          'engolindo o leite.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/rest/IMAGEM 10.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 10.0,),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            width: 250.0,
            //height: 250.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 101, 188, 89),
                    width: 3.0
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: const Color.fromARGB(255, 101, 188, 89),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Pega incorreta (errada)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2A criança pega apenas o bico do peito, apertando e'
                          ' esticando a mama;\n\u27A2Bochechas fincam fundas e '
                          'não cheias;\n\u27A2O corpo da criança não está '
                          'voltado para a mãe;\n\u27A2Abertura pequena da '
                          'boca, sendo visível, grande parte escura da mama '
                          '(aréola);\n\u27A2Dor na mama durante a mamada.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                const SizedBox(height: 10.0,),
                const Text(
                  'Pega incorreta',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images/rest/IMAGEM 11.jpg'),
                const SizedBox(height: 10.0,),
                const Text(
                  'Posição incorreta da criança',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images/rest/IMAGEM 12.png'),
              ],
            ),
          ),

          const SizedBox(height: 30.0,),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}