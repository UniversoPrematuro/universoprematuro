// ignore_for_file: body_might_complete_normally_nullable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
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
  TextEditingController controllerBirthMother = TextEditingController();

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();

  @observable
  String name = '';

  @computed
  bool get isValid {
    return validationName() == null;
  }

  
  
  @action
  changeName(String value) => controllerNameMother.text = value;

  validationName() {
    if (controllerNameMother.text.isEmpty) {
      return 'O campo é obrigatorio';
    } else if (controllerNameMother.text.length < 3) {
      return 'O campo deve ter mais de 3 caracter';
    } else {
      return;
    }
  }



  @observable
  String? idLogado;

 
  @action
  registerUser(UserModel user) {
    UserModel user = UserModel();
    user.email = controllerEmail.text;
    user.pass = controllerPass.text;
    auth.createUserWithEmailAndPassword(
      email: user.email,
      password: user.pass,
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
    user.birth = controllerBirthMother.text;

    Map<String, dynamic> data = {
      "nome da mãe" : user.name,
      "email" : user.email,
      "nasc. mãe" : user.birth
    };
    db.collection("users").doc(idLogado).set(data);

    
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