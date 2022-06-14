import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStoreBase with _$RegisterStore;
abstract class _RegisterStoreBase with Store {

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;

  @observable
  UserModel model = UserModel();

  @observable
  TextEditingController controllerName = TextEditingController();

  @observable
  TextEditingController controllerEmail = TextEditingController();

  @observable
  TextEditingController controllerPass = TextEditingController();

  @observable 
  String name = '';

  @observable 
  String email = '';

  @observable 
  String pass = '';



  // @action
  // Future<UserModel> registerUser({
  //   required String email,
  //   required String password,
  // }) async {
  //   final user = await auth.createUserWithEmailAndPassword(
  //     email: controllerEmail.text,
  //     password: controllerPass.text,
  //   ).then((firebaseUser){
  //     UserModel user = UserModel();
  //     FirebaseFirestore db = FirebaseFirestore.instance;

  //     db.collection("users").doc(firebaseUser.user?.uid).set(user.toMap());
  //   });
  //   return user.user!;
  // }

 @action
  Future<User?> registerUser({
    required String email,
    required String password,
  }) async {
    final user = await auth.createUserWithEmailAndPassword(
      email: controllerEmail.text,
      password: controllerPass.text,
    ).then((firebaseUser){
      UserModel model = UserModel();
      FirebaseFirestore db = FirebaseFirestore.instance;

      db.collection("users").doc(firebaseUser.user?.uid).set(model.toMap());
    });
    
  }
    

  

 
  
  // @override
  // void dispose() {
  //   controllerEmail.dispose();
  //   controllerName.dispose();
  //   controllerPass.dispose();
  
  // }
}