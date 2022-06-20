import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';


import '../register/register_store.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {
  final LoginStore store = LoginStore();
  final RegisterStore reg = Modular.get();


  // _textField({String? labelText, onChanged,errorText}){
  //   return TextField(
  //     onChanged: onChanged,
  //     decoration: InputDecoration(
  //       labelText: labelText,
  //       errorText: errorText == null ? null : errorText(),
  //       prefixIcon: const Icon(Icons.person_outline_rounded, color: Color.fromARGB(255, 101, 187, 88)),
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(10), 
  //         )
  //     ),
  //   );
  // }

  // _textField2({String? labelText, onChanged,errorText}){
  //   return TextField(
  //     onChanged: onChanged,
  //     decoration: InputDecoration(
  //       labelText: labelText,
  //       errorText: errorText == null ? null : errorText(),
  //       prefixIcon: const Icon(Icons.password_outlined, color: Color.fromARGB(255, 101, 187, 88)),
  //       border: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(10), 
  //         )
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 255, 193, 143),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 80),
                child: Image.asset(
                  "images/logo/LogoMov.gif",
                  width: 250,
                  height: 250,
                )),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                      Observer(
                        builder: (_) => TextField(
                          onChanged: (value) => store.email = value,
                          decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter your email address',
                              errorText: store.error.email),
                ),
              ),
                          const SizedBox(height: 20),
                      Observer(
                        builder: (_) => TextField(
                          onChanged: (value) => store.pass = value,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Set a password',
                              errorText: store.error.pass),
                ),
              ),

                          const SizedBox(height: 20),

                             ElevatedButton(
                              onPressed: () {
                                if (store.validateAll == true ){
                                Modular.to.pushReplacementNamed("/home");
                                }
                              },
                              child: const Text("Entre agora!")),  
                        //       Padding(
                        //   padding: const EdgeInsets.only(top: 1),
                        //   child: Center(
                        //     child: Text(
                        //       error,
                        //       style: const 
                        //       TextStyle(
                        //         color: Color.fromARGB(255, 255, 0, 0),
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.w500
                        //       ),
                        //     ),
                        //   ),
                        // ),                                                                                               
                        ],
                        
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}