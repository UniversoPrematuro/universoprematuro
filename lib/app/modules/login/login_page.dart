import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

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
                        children: [
                          // TextField(
                          //     decoration: InputDecoration(
                          //         labelText: "Email",
                          //         border: OutlineInputBorder(
                          //           borderRadius: BorderRadius.circular(8),
                          //         ))),
                          // const SizedBox(height: 8),
                          // TextField(
                          //     decoration: InputDecoration(
                          //         labelText: "Senha",
                          //         border: OutlineInputBorder(
                          //           borderRadius: BorderRadius.circular(8),
                          //         ))),
                          ElevatedButton(
                              onPressed: () {
                                Modular.to.pushNamed('/home');
                              },
                              child: const Text("JACARÉ"))
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