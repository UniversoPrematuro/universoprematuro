import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

class UserModel{


  @observable
  String? name;

  @action 
  changeName(String value) => name = value;

  @observable
  String? email;

  @action 
  changeEmail(String value) => email = value;

  @observable
  String? pass;

  @action 
  changePass(String value) => pass = value; 

  

  Map<String, dynamic> toMap() {
     Map<String, dynamic> map = {"nome": name, "email": email};
     return map;
  }

}