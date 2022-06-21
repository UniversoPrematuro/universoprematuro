import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/register/register_store.dart';

class UserModel{

  final RegisterStore store = RegisterStore();

  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String pass = '';

  
  @action 
  changeName(String value) => name = value;

  @action 
  changeEmail(String value) => email = value;

  @action 
  changePass(String value) => pass = value; 

  

  Map<String, dynamic> toMap() {
     Map<String, dynamic> map = {"nome": name, "email": email};
     return map;
  }

}