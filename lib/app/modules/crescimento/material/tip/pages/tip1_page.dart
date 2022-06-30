import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/widgets/image_content.dart';

class Tip1Page extends StatefulWidget {
  final String title;
  const Tip1Page({Key? key, this.title = 'Tip1Page'}) : super(key: key);
  @override
  Tip1PageState createState() => Tip1PageState();
}
class Tip1PageState extends State<Tip1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dicas Iniciais"), 
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
            'Dicas iniciais para as mamães',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
          imageContent('images/crescimento/1-4/initial.png',textContent('', '\u27A2Mamãe! '
              'Escolha um ambiente agradável, tranquilo e calmo. Um ambiente '
              'que você se sinta confortável;\n\n'
              '\u27A2Se você  gostar de música, coloque uma música relaxante, '
              'que acalme. Isso vai te ajudar a amamentar;\n\n'
              '\u27A2Seja persistente na amamentação, não desista!\n\n'
              '\u27A2É um momento único, de amor e afeto, aproveita e '
              'converse com e demonstre todo o seu carinho. Se a '
              'família puder paticipar durante esse momento, conte com o apoio '
              'e carinho deles também. Você vai sentir mais forte e confiante;\n\n'
              '\u27A2Tenha confiança! Evite o estresse, ansiedade e sentimentos '
              'negativos, pois isso pode interferir na saída do leite;\n\n'
              '\u27A2Caso tenha dificuldade em amamentar , mesmo após o'
              ' uso do aplicativo Universo Prematuro, procure ajuda! Você não '
              'está sozinha. Procure a Unidade Básica de Saúde mais próxima de '
              'sua casa, você vai encontrar profissionais capacitados para lhe '
              'orientar, para que você consiga continuar amamentando.')),

          SizedBox(height: 30.0,),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}