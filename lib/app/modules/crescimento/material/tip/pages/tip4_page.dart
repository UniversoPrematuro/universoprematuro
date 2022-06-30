import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/pages/widgets/image_content.dart';

class Tip4Page extends StatefulWidget {
  final String title;
  const Tip4Page({Key? key, this.title = 'Tip4Page'}) : super(key: key);
  @override
  Tip4PageState createState() => Tip4PageState();
}
class Tip4PageState extends State<Tip4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posições da criança"), 
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
            'Posições da criança durante o aleitamento materno',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              '\u25CF Posição correta para colocar para mamar: ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )
            ),
          ),
          imageContent('images/crescimento/1-4/initial.png',textContent('', '\u27A2Rosto do bebê de '
              'frente para a mama, nariz não encosta na mama;\n\n'
              '\u27A2Corpo  do bebê virado para o corpo da mãe, oferecendo apoio;')),
          imageContent('images/crescimento/1-4/initial3.jpg',textContent('', '\u27A2Se a mamãe preferir, pode '
              'usar uma almofada para apoiar a criança;\n\n'
              '\u27A2Corpo da criança não pode ficar torcido, mantenha alinhado com o'
              ' corpo da mãe.')),
          imageContent('images/crescimento/1-4/initial6.jpg',Column(
            children: <Widget>[
              textContent('', '\u27A2A mamãe pode utilizar a '
              'Técnica em C durante a mamada.\n'),
              textContent('Técnica em C: ', 'Com a mão que não está segurando a criança, a '
            'mamãe segura à mama, em forma de C, com o polegar acima (dedão) '
            'e a palma da mão abaixo, os dedos longe da parte escura da mama'
            ' (aréola).'),
            ],
          )),

          const SizedBox(height: 30.0,),
          const SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}