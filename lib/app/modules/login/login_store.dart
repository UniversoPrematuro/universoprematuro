import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;
abstract class _LoginStoreBase with Store {

  UserModel user = UserModel();
  FirebaseAuth auth = FirebaseAuth.instance;

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();

  @action
  Future<void> login() async {
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    auth.signInWithEmailAndPassword(email: user.email, password: user.pass).then((firebaseUser) {
      Modular.to.pushNamed('/home');
    });
  }

  

}