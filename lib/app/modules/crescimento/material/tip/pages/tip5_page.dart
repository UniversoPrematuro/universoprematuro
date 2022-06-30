import 'package:flutter/material.dart';

class Tip5Page extends StatefulWidget {
  final String title;
  const Tip5Page({Key? key, this.title = 'Tip5Page'}) : super(key: key);
  @override
  Tip5PageState createState() => Tip5PageState();
}
class Tip5PageState extends State<Tip5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posições da mamãe"), 
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
            'Posições da mamãe para amamentação',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0,),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                '\u27A2 A mamãe deve escolher a posição mais confortável para '
                    'ela, podendo ficar sentada, deitada ou em pé;\n\u27A2Em '
                    'qualquer posição escolhida, a mamãe deve observar se a '
                    'posição e pega da criança estão corretas.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )
            ),
          ),
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
                      'Sentada ou de pé, com o bebê no colo (Posição tradicional)',
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
                      '\u27A2 Se a mamãe preferir amamentar '
                          'sentada, deve apoiar a coluna e manter os ombros '
                          'relaxados, criança na posição correta (corpo voltado '
                          'para o corpo da mãe, coluna alinhada) pegando a maior '
                          'parte da aréola (parte escura da mama)',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/crescimento/1-4/initial5.jpg'),
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
                      'Sentada, com o bebê de lado, por baixo do braço da mamãe'
                          ' (Posição de jogador de futebol americano ou Duplo C)',
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
                      '\u27A2 Esta posição consiste em deixar a criança apoiada'
                          ' no mesmo braço da mama, suportando o seu corpo e '
                          'cabeça;\n\u27A2Mãe sentada, se preferir, pode usar '
                          'uma almofada ou travesseiro para apoiar a criança;'
                          '\n\u27A2O bebê é posicionado lateralmente ao corpo '
                          'da mãe, com a cabeça apoiada na mão da mãe e corpo '
                          'voltado para o corpo da mamãe.',
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
                  'Apoio do corpo da criança com o braço',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images/crescimento/5-8/IMAGEM 05.jpg'),
                const SizedBox(height: 10.0,),
                const Text(
                  'Apoio do corpo da criança com almofadas',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('images/crescimento/5-8/IMAGEM 06.jpg'),
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
                      'Deitada, de lado na cama',
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
                      '\u27A2Oferece a mama que está mais próxima da criança, a'
                          ' mamãe deve usar uma almofada, travesseiro ou o '
                          'próprio braço para apoiar a sua cabeça durante a '
                          'mamada;\n\u27A2Se a mamãe preferir, pode usar '
                          'travesseiro ou almofada para apoiar o corpo da '
                          'criança. O corpo da criança deve estar voltado para '
                          'o corpo da mama.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/crescimento/5-8/IMAGEM 07.jpg'),
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
                      'Sentada, com o bebê na "posição de cavalinho” ',
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
                      '\u27A2A criança fica sentada, apoiada na perna da mamãe;'
                          '\n\u27A2O corpo da criança deve estar apoiado pelo '
                          'braço e mão da mãe, formando um C\n\u27A2A boca da '
                          'criança deve estar na altura do mamilo, se for '
                          'necessário, colocar almofada no colo da mamãe para '
                          'que a boca da criança fique na altura do mamilo. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/crescimento/5-8/IMAGEM 08.jpg'),
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