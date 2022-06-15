// ignore_for_file: body_might_complete_normally_nullable

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
  

  @observable
  TextEditingController controllerName = TextEditingController();

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();


  @observable
  String? idLogado;





 @action
  Future<User?> registerUser({
    required String email,
    required String password,
  }) async {
    await auth.createUserWithEmailAndPassword(
      email: controllerEmail.text,
      password: controllerPass.text,
    ).then((firebaseUser) async {
      save();
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
    user.name = controllerName.text;

    Map<String, dynamic> data = {
      "nome da mãe" : user.name,
      "email" : user.email
    };
    db.collection("users").doc(idLogado).set(data);

    
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerName.dispose;
    controllerPass.dispose();
  }
  
    

  

 
  
  // @override
  // void dispose() {
  //   controllerEmail.dispose();
  //   controllerName.dispose();
  //   controllerPass.dispose();
  
  // }
}