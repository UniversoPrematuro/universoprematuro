// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../models/user_model.dart';

import 'package:validators2/validators.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;
abstract class _LoginStoreBase with Store {

  var user = UserModel();
  final FormErrorState error = FormErrorState();

  

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();

  @observable
  String email = '';

  @observable
  String pass = '';



  @observable
  ObservableFuture<bool> emailCheck = ObservableFuture.value(true);


  @computed
  bool get isUserCheckPending => emailCheck.status == FutureStatus.pending;

   @computed
  bool get canLogin => !error.hasErrors;



  



  @action
  void validatePassword(String value) {
    error.pass = isNull(value) || value.isEmpty ? 'Cannot be blank' : null;
  }

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'Not a valid email';
  }

   void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void validateAll() {
    validatePassword(pass);
    validateEmail(email);

    }

  late List<ReactionDisposer> _disposers;

  void setupValidations() {
      _disposers = [
        reaction((_) => email, validateEmail),
        reaction((_) => pass, validatePassword)
      ];
    }

  
  // @action
  // String validateEmail() {  
  //   if(user.email == null || user.email!.length < 3 ){
  //     return "Este campo é obrigatorio";
  //   } else if (!user.email!.contains("@")){
  //     return 'Email inválido';
  //   }
  //   return '';
  // }

  // @action
  // String validatePass()  {
  //   if(user.pass == null || user.pass!.isEmpty){
  //     return "Este campo é obrigatorio";
  //   } else if (user.pass!.length < 4){
  //     return 'Insira a senha correta';
  //   }
  //   return '';
  // }

  @action
  Future<UserModel?> login(UserModel user) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    auth.signInWithEmailAndPassword(email: user.email!, password: user.pass!)
    .then((firebaseUser){
      Modular.to.pushReplacementNamed("/home");
    }).catchError((error){

    });
  }

  @action
  Future<UserModel?> verifyLogged() async {
    FirebaseAuth auth = FirebaseAuth.instance;


    User usuarioLogado = await auth.currentUser!;
    if(usuarioLogado != null ){
      Modular.to.pushReplacementNamed("/home");
    }
  }

}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {


  @observable
  String? email;

  @observable
  String? pass;

  @computed
  bool get hasErrors => email != null || pass != null;
}