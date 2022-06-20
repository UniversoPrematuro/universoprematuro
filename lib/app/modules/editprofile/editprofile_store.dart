import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/perfil_model.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';

part 'editprofile_store.g.dart';

class EditprofileStore = _EditprofileStoreBase with _$EditprofileStore;
abstract class _EditprofileStoreBase with Store {



  PerfilModel perfil = PerfilModel();

  @observable
  TextEditingController controllerNameChild = TextEditingController();

  @observable
  TextEditingController controllerBirth = TextEditingController();

  @observable
  TextEditingController controllerGesAge = TextEditingController();

  @computed
  bool get isValid {
    return validateName() == null && validateBirth() == null && validateGesAge() == null;
  }

  
  @action
  Future validateName() async {
    if(perfil.nameChild == null || perfil.nameChild!.length < 3 ){
      return "Insira um nome váldo";
    } 
    return null;
  }

  @action
  Future validateBirth() async {
    if(perfil.birth == null || perfil.birth!.isEmpty){
      return "Este campo é obrigatorio";
    }
    return null;
  }

  @action
  Future validateGesAge() async {
    if(perfil.gesAge == null || perfil.gesAge!.bitLength < 3){
      return "Este campo é obrigatorio";
    }
    return null;
  }

  
}