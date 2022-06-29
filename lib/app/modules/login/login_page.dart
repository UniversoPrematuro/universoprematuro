import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universoprematuro/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';


class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();
  final RegisterStore reg = Modular.get();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Modular.to.pushNamed("/");
          },
        ),
      ),
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
                         Observer(
                          builder: (_) {
                           return TextField(
                            controller: store.controllerEmail,
                            onChanged:(value) =>  store.changeEmail,
                               decoration: InputDecoration(
                                errorText: store.validateEmail(),
                                   labelText: "Email",
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(8),
                                   )));
                              }),
                         const SizedBox(height: 8),
                         Observer(
                          builder: (_) {
                           return TextField(
                            controller: store.controllerPass,
                            onChanged:(value) => store.changePass,
                               decoration: InputDecoration(
                                   labelText: "Senha",
                                   errorText: store.validatePass(),
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(8),
                                   )));
                      }),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  store.signInWithEmailAndPassword(UserModel());
                                },
                                child: const Text("Entre agora!")),
                          ),

                          Observer(
                            builder: (_) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              child: Text(
                                store.error,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.w500
                                ),
                                )
                              );
                            })
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