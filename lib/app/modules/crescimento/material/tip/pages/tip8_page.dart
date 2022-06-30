import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/widgets/image_content.dart';

class Tip8Page extends StatefulWidget {
  final String title;
  const Tip8Page({Key? key, this.title = 'Tip8Page'}) : super(key: key);
  @override
  Tip8PageState createState() => Tip8PageState();
}
class Tip8PageState extends State<Tip8Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Passo-a-Passo da amamentação"), 
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
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 30.0,),
          const Text(
            'Passo a passo para a amamentação',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.0,),
          imageContent('images/crescimento/1-4/initial5.jpg',
            textContent('',
                '\u27A2A criança prematura apresenta mais dificuldade em pegar a'
                    ' mama e sugar o leite. A mamãe deve ter paciência e '
                    'persistência. Não desista! Tente quantas vezes for '
                    'necessário;\n\n'
                    '\u27A2A mamãe deve escolher a posição mais confortável '
                    'para ela dar de mamar;\n\n'
                    '\u27A2Ordenhe (Retirar o leite do peito) a mama caso a aréola '
                    '(parte escura da mama) esteja endurecida;\n\n'
                    '\u27A2Encosta a mama na boca do bebê, para ele virar a cabeça e'
                    ' abrir a boca, pegando a maior parte escura da mama - aréola '
                    '(reflexo de busca);\n\n'
                    '\u27A2Levar a criança à mama e não a mama a criança;\n\n'
                    '\u27A2Para auxílio da pega, a mamãe poderá segurar a mama em '
                    'forma de C, polegar acima e a palma da mão abaixo da mama;\n\n'
                    '\u27A2A mamãe deve ouvir a criança engolindo o leite;\n\n'
                    '\u27A2A criança prematura engole o leite mais lentamente, é '
                    'comum que haja pausa durante a sucção (retirada do leite). A '
                    'criança respira, engole o leite e descansa;\n\n'
                    '\u27A2A mamada pode ser mais demorada na criança prematura, '
                    'verifique se ela está sugando, deglutindo e fazendo pequenas '
                    'pausas para começar a sugar novamente. Caso a criança venha a '
                    'dormir durante a mamada e tenha sugado pouco a mama, acorde a '
                    'criança, com toques suaves no rosto e corpo, para que ela '
                    'continue a amamentar;\n\n'
                    '\u27A2Deixe a criança esvaziar um peito, para depois passar '
                    'para o outro;\n\n'
                    '\u27A2O primeiro leite que sai durante a mamada, mata a sede e '
                    'protege a criança e o último leite, engorda a criança, por '
                    'isso, é muito importante esvaziar uma mama para depois passar '
                    'para outra;\n\n'
                    '\u27A2Se a mamãe trocar de mama durante uma mamada, inicie a '
                    'próxima mamada na mama que foi oferecida por último ou na mama'
                    ' que a criança não mamou;\n\n'
                    '\u27A2Oferecer um peito até o bebê soltar ou esvaziar a mama e '
                    'depois oferecer o outro.'),
          ),

          SizedBox(height: 30.0,),
          SizedBox(height: 30.0,),
        ],
      )
    );
  }
}