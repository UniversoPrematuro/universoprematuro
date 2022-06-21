import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:universoprematuro/app/modules/models/perfil_model.dart';
import 'package:universoprematuro/app/modules/models/user_model.dart';

part 'editprofile_store.g.dart';

class EditprofileStore = _EditprofileStoreBase with _$EditprofileStore;
abstract class _EditprofileStoreBase with Store {



  PerfilModel perfil = PerfilModel();
  FirebaseStorage storage = FirebaseStorage.instance;

  @observable
  TextEditingController controllerNameChild = TextEditingController();

  @observable
  TextEditingController controllerBirth = TextEditingController();

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

  Future reuperarImg(String origem) async {
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
    File file = File(imagem!.path);
    Reference pastaRaiz = await storage.ref();
    Reference arquivo = await pastaRaiz.child("perfil").child("${idLogado}.jpg");

    UploadTask task = arquivo.putFile(file);
    task.snapshotEvents.listen((TaskSnapshot storageEvent) {
      if(storageEvent.state == TaskState.running){
        upload = true;
      } else if (storageEvent.state == TaskState.success){
        upload = false;
      }
     });
     task.then((TaskSnapshot taskSnapshot) => recuperarUrlImg(taskSnapshot));
  }

  Future recuperarUrlImg(TaskSnapshot taskSnapshot) async {
    String url = await taskSnapshot.ref.getDownloadURL();
    urlImagemRec = url;
  }



  



  
}