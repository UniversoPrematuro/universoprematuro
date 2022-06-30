import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/widgets/image_content.dart';

class Tip3Page extends StatefulWidget {
  final String title;
  const Tip3Page({Key? key, this.title = 'Tip3Page'}) : super(key: key);
  @override
  Tip3PageState createState() => Tip3PageState();
}
class Tip3PageState extends State<Tip3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cuidados com a mama"), 
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
            'Cuidados com a mama',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
          imageContent('images/crescimento/1-4/initial2.jpg',textContent('', '\u27A2Dê '
              'preferência a roupas confortáveis, fáceis de tirar e que expõe '
              'todo o seio para criança durante a mamada; Use sutiãs '
              'confortáveis, que sustentem a mama;')),
          imageContent('images/crescimento/1-4/initial3.jpg',textContent('\u27A2Evite ',
              'passar na mama cremes, pomadas ou bucha vegetal;')),
          imageContent('images/crescimento/1-4/initial4.png',textContent('', '\u27A2Se a parte'
              ' escura da mama (aréola) ficar sensível, passe o próprio leite e'
              ' exponha o seio ao sol, em torno 10 a 15 minutos, antes das nove'
              ' e/ou depois das dezesseis horas.                                                                                                               ')),
          const SizedBox(height: 30.0,),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}