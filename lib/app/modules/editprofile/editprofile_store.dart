// ignore_for_file: no_leading_underscores_for_local_identifiers, library_private_types_in_public_api

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';

import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/perfil_model.dart';


part 'editprofile_store.g.dart';

class EditprofileStore = _EditprofileStoreBase with _$EditprofileStore;
abstract class _EditprofileStoreBase with Store, Disposable {



  PerfilModel perfil = PerfilModel();
  FirebaseStorage storage = FirebaseStorage.instance;

  @observable
  TextEditingController controllerNameChild = TextEditingController();

  @observable
  TextEditingController controllerBirthChild = TextEditingController();

  @observable
  TextEditingController controllerGesAge = TextEditingController();

  @observable
  XFile? imagem;
  
  @observable
  String? idLogado;

  @observable
  bool upload = false;

  @observable
  String urlImagemRec = '';



  @observable
  TextEditingController controllerBirthMother = TextEditingController();
  
  

  @observable
  String? escolhaUser;

  Future recuperarImg(String origem) async {
    final ImagePicker _picker = ImagePicker();
    XFile? imagemSelec;
    if(origem == "camera"){
      imagemSelec = await _picker.pickImage(source: ImageSource.camera);
      imagem = imagemSelec;
      if(imagem != null){
        uploadImg();
        upload = true;
      }
    } else if (origem == "galeria") {
      imagemSelec = await _picker.pickImage(source: ImageSource.gallery);
      imagem = imagemSelec;
      if(imagem != null){
        uploadImg();
        upload = true;
      }
    }
  }

  Future uploadImg() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;
    File file = File(imagem!.path);
    Reference pastaRaiz =  storage.ref();
    Reference arquivo =  pastaRaiz.child("perfil").child("$idLogado.jpg");

    UploadTask task = arquivo.putFile(file);
    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload = true;
      } else if (storageEvent.state == TaskState.success){
        upload = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recuperarUrlImg(taskSnapshot));
     await Future.delayed(const Duration(seconds: 2));
  }

  Future recuperarUrlImg(TaskSnapshot taskSnapshot) async {
    String url = await taskSnapshot.ref.getDownloadURL();
    urlImagemRec = url;
  }

  Future saveData() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User usuarioLogado = auth.currentUser!;
    idLogado = usuarioLogado.uid;

    FirebaseFirestore db = FirebaseFirestore.instance;
    PerfilModel perfil = PerfilModel();
    perfil.nameChild = controllerNameChild.text;
    perfil.birth = controllerBirthChild.text;
    perfil.gesAge = controllerGesAge.text;
    perfil.gender = escolhaUser;

    Map<String, dynamic> data = {
      "Crian??a" : perfil.nameChild,
      "nasc. crian??a": perfil.birth,
      "GesAge" : int.tryParse(controllerGesAge.text.substring(9,11))!*7 +
                int.tryParse(controllerGesAge.text.substring(20,21))! + 10.round(),
      "sexo" : escolhaUser,
      "registro" : DateTime.now().toString(),
    };
    db.collection("users").doc(idLogado).update(data).then((firebaseUser) {
      saveData();

      
    });
  }

  @override
  void dispose() {

    controllerNameChild.dispose();
    controllerBirthChild.dispose();
    controllerGesAge.dispose();
  }



  // 'gage':int.parse(_gageController.value.substring(9,11))*7 +
  //             int.parse(_gageController.value.substring(20,21)),

/* 
2 meses = +/- 8 semanas - idade cronol??gica


 */

 /*  Somamos sua idade gestacional de nascimento em semanas (29 semanas) 
 ao tempo, tamb??m em semanas, transcorrido ap??s seu nascimento (8 semanas
 e teremos como resultado 37 [29 sem + 8 sem = 37 sem]. 
 ?? como se hoje ele fosse um beb?? de 37 semanas de gesta????o. Teoricamente n??o deveria nem ter nascido ainda. */ 



  
}