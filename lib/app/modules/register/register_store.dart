// ignore_for_file: body_might_complete_normally_nullable, library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStoreBase with _$RegisterStore;
abstract class _RegisterStoreBase with Store, Disposable {

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  // UserModel? user;

  // _RegisterStoreBase() {
  //   user = UserModel();
  // }
  

  @observable
  TextEditingController controllerNameMother = TextEditingController();

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();


  @computed
  bool get isValid {
    return validatePass() == null && validateEmail() == null;
  }



  
  
  // @action
  // changeName(String value) => controllerNameMother.text = value;

  @action
  changeEmail(String value) => controllerEmail.text = value;

  @action
  changePass(String value) => controllerPass.text = value;

  // validateName() {
  //   var user = UserModel();
  //   user.name = controllerNameMother.text;
  //   if (user.name!.isEmpty) {
  //     return 'O campo é obrigatorio';
  //   } else if (user.name!.length < 3) {
  //     return 'O campo deve ter mais de 3 caracter';

  //   }
  // }
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



  @observable
  String? idLogado;

 
  @action
  registerUser(UserModel user) {
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    auth.createUserWithEmailAndPassword(
      email: user.email!,
      password: user.pass!,
    ).then((firebaseUser){
      save();
      Modular.to.pushNamed('/editprofile');
    });
    
  }
  
  @action
  Future<User?> save() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    UserModel user = UserModel();
    FirebaseFirestore db = FirebaseFirestore.instance;

    user.email = controllerEmail.text;
    user.name = controllerNameMother.text;

    Map<String, dynamic> data = {
      "nome da mãe" : user.name,
      "email" : user.email,
    };
    db.collection("users").doc(idLogado).set(data);

    
  }

  Future login(UserModel user) async {
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

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerNameMother.dispose();
    controllerPass.dispose();
  }
  
    

  

 
  
  // @override
  // void dispose() {
  //   controllerEmail.dispose();
  //   controllerName.dispose();
  //   controllerPass.dispose();
  
  // }
}