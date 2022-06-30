import 'package:flutter/material.dart';

class Tip2Page extends StatefulWidget {
  final String title;
  const Tip2Page({Key? key, this.title = 'Tip2Page'}) : super(key: key);
  @override
  Tip2PageState createState() => Tip2PageState();
}
class Tip2PageState extends State<Tip2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Importância do aleitamento"), 
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
            'Importância do aleitamento materno',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
          content(
            'Vantagens para a criança',
            'images/crescimento/1-4/initial1.gif',
            'O leite materno: \n\n\u27A2Alimento completo,  rico em vitaminas, minerais, gorduras, '
                'proteínas, todas as substâncias que a criança precisa para '
                'poder crescer e se desenvolver;\n\n'
                '\u27A2Protege contra várias doenças, como diarréia, infecções '
                'e alergias, evitando que a criança seja internada;\n\n'
                '\u27A2Sempre pronto e na temperatura correta;\n\n'
                '\u27A2Aumenta o contato com a mamãe, a criança se sente '
                'acolhida e amada;\n\n'
                '\u27A2Ajuda na dentição e fala;\n\n'
                '\u27A2É mais apropriado para a criança por ser de fácil digestão;\n\n'
                '\u27A2Provoca menos cólica.'
          ),
          content(
              'Vantagens para a mamãe, papai e família',
              'images/crescimento/1-4/initial.png',
              'O leite materno: \n\n\u27A2Aumenta os laços com a criança;\n\n'
                  '\u27A2É um método natural, de amor e carinho;\n\n'
                  '\u27A2Diminui o risco de câncer de mama e ovário;\n\n'
                  '\u27A2É barato e prático, não precisa ser comprado;\n\n'
                  '\u27A2A mamãe se sente confiante e autorrealizada;\n\n'
                  '\u27A2Ajuda a mamãe a voltar o peso antes da gestação.'
          ),

          const SizedBox(height: 30.0,),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}

Widget content(String title, String image, String text){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
          ),
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                text,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )
            ),
          ),
        ],
      ),
    );
  }