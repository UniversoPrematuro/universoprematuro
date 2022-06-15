
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
  int? gesAge;

  @observable
  bool? gender;

  @action
  setId(String value) => id = value;

  @action
  setNameChild(String value) => nameChild = value;

  @action
  setBirth(String value) => birth = value;

  @action
  setGesAge(int value) => gesAge = value;

  @action
  setGender(bool value) => gender = value;


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