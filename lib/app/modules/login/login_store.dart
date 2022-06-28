// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;
abstract class _LoginStoreBase with Store {

  


  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();


  @action
  changeEmail(String value) => controllerEmail.text = value;

  @action
  changePass(String value) => controllerPass.text = value;

  validateEmail() {
    var user = UserModel();
    user.email = controllerEmail.text;
    if (user.email!.isEmpty) {
      return 'O campo é obrigatorio';
    } else if (!user.email!.contains("@")) {
      return 'Insira um e-mail válido!';

    }
  }
  validatePass() {
    var user = UserModel();
    user.pass = controllerPass.text;
    if (user.pass!.isEmpty) {
      return 'O campo é obrigatorio';
    } else if (user.pass!.length < 5) {
      return 'A senha precisa ter mais de 5 caracteres';

    }
  }


  Future login(UserModel user) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    await auth.signInWithEmailAndPassword(email: user.email!, password: user.pass!)
    .then((firebaseUser) { 
      Modular.to.pushNamed('/home/nav');
    }).catchError((error){
      error = 'Erro ao autenticar o usuario, verifique email e senha';
      return error;
    });
  }
  

  

  

}