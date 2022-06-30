import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/crescimento/tips/tip/tip_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/crescimento/tips/tip/widgets/image_content.dart';

class TipPage extends StatefulWidget {
  final String title;
  const TipPage({Key? key, this.title = 'TipPage'}) : super(key: key);
  @override
  TipPageState createState() => TipPageState();
}
class TipPageState extends State<TipPage> {
  final TipStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: 
          ListView(
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
          imageContent('images/crescimento/1-4/initial.png',
          textContent('', '\u27A2Mamãe! '
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