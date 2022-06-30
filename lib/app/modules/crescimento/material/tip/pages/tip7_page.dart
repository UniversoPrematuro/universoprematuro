import 'package:flutter/material.dart';

class Tip7Page extends StatefulWidget {
  final String title;
  const Tip7Page({Key? key, this.title = 'Tip7Page'}) : super(key: key);
  @override
  Tip7PageState createState() => Tip7PageState();
}
class Tip7PageState extends State<Tip7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio da mamada"), 
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
          const SizedBox(height: 30.0,),
          const Text(
            'Início da mamada',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
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
                const SizedBox(height: 10.0,),
                const Text(
                  '• Se a criança estiver sonolenta ou dormindo, é preciso que'
                      ' a mamãe a estimule, fazendo:',
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
                      '\u27A2Movimentos suaves com as mãos nas bochechas, no '
                          'corpinho e planta dos pés;\n\u27A2Mudar a criança de'
                          ' posição, retirar um pouco de agasalhos, conversando'
                          ' com a criança e massageando o corpinho.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/rest/Gif---2.gif'),
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
                const SizedBox(height: 10.0,),
                const Text(
                  '• Observe a parte escura da mama(aréola):',
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
                      '\u27A2Se a mama estiver muito cheia e a aréola (parte'
                          ' escura da mama) estiver dura, a mamãe deve fazer '
                          'massagem com as pontas dos dedos (indicador e médio)'
                          ' em círculos, com uma leve força sobre os dedos '
                          '(compresão), em toda a mama, em sentido horário;'
                          '\n\u27A2A massagem deve ser iniciada pela aréola '
                          '(parte escura da mama) e depois em toda a mama;'
                          '\n\u27A2Após a massagem, retire (ordenhe) um pouco '
                          'de leite, isso vai fazer com que a aréola (parte '
                          'escura da mama) fique mais macia e facilita para '
                          'que a criança abocanhe a mama. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/rest/Gif---3.gif'),
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
                const SizedBox(height: 10.0,),
                const Text(
                  '• Para estimular a criança a procurar o peito e abrir a boca'
                      ' (reflexo de procura), a mamãe poderá:',
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
                      '\u27A2Fazer toques suaves com o dedo indicador ou com'
                          ' o mamilo, nos lábios da criança, principalmente o '
                          'inferior (lábio debaixo), ou fazer o toque nas '
                          'bochechas;'
                          '\n\u27A2Retirar um pouco de leite, em ordenha manual'
                          ', para que a criança sinta o cheiro e o gosto. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                ),
                Image.asset('images/rest/Gif---4.gif'),
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
              children: const <Widget>[
                SizedBox(height: 10.0,),
                Text(
                  '• Estimule também para que a criança consiga engolir o leite'
                      ' (reflexo de deglutição):',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 193, 61, 39),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      '\u27A2Pode ser dado um leve sopro pela mãe, durante a '
                          'mamada, no rostinho da criança, isso faz com que a '
                          'criança tenha três deglutições (engolir o leite);'
                          '\n\u27A2Uma das posições que podem auxiliar a '
                          'criança a engolir o leite é posição de jogador de '
                          'futebol americano (DUPLO C). ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      )
                  ),
                )
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