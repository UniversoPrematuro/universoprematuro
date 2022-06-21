import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key? key, this.title = 'RegisterPage'}) : super(key: key);
  @override
  RegisterPageState createState() => RegisterPageState();
}
class RegisterPageState extends State<RegisterPage> {
  final RegisterStore store = Modular.get();
  var user = UserModel();


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
                          Observer(builder: (_) {
                            return TextField(
                              controller: store.controllerName,
                              onChanged: (value) => store.controllerName.text,
                              decoration: InputDecoration(
                                errorText: store.validationName(),
                                  labelText: "Nome",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )));
                          }),
                          
                          const SizedBox(height: 8),
                          TextField(
                              controller: store.controllerEmail,
                              decoration: InputDecoration(
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ))),
                          const SizedBox(height: 8),
                          TextField(
                            obscureText: true,
                              controller: store.controllerPass,
                              decoration: InputDecoration(
                                  labelText: "Senha",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ))),
                          ElevatedButton(
                              onPressed: () {
                                
                                  store.registerUser(UserModel());
                                
                                // store.registerUser(UserModel());
                              },
                              child: const Text("Cadastre-se")),
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