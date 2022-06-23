
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';


class PerfilModel extends UserModel{


  @observable 
  String? id;

  @observable
  String? nameChild;

  @observable
  String? birth;

  @observable
  String? gesAge;

  @observable
  String? gender;

  @action
  setId(String value) => id = value;

  @action
  setNameChild(String value) => nameChild = value;

  @action
  setBirth(String value) => birth = value;

  @action
  setGesAge(String value) => gesAge = value;

  @action
  setGender(String value) => gender = value;

  @override
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
    "nome da criança" : nameChild,
    "data de nasc." : birth,
    "idade" : gesAge,
    "sexo" : gender
    };
    return map;
  }




}