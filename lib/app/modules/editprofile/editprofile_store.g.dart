// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editprofile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditprofileStore on _EditprofileStoreBase, Store {
  late final _$controllerNameChildAtom =
      Atom(name: '_EditprofileStoreBase.controllerNameChild', context: context);

  @override
  TextEditingController get controllerNameChild {
    _$controllerNameChildAtom.reportRead();
    return super.controllerNameChild;
  }

  @override
  set controllerNameChild(TextEditingController value) {
    _$controllerNameChildAtom.reportWrite(value, super.controllerNameChild, () {
      super.controllerNameChild = value;
    });
  }

  late final _$controllerBirthAtom =
      Atom(name: '_EditprofileStoreBase.controllerBirth', context: context);

  @override
  TextEditingController get controllerBirth {
    _$controllerBirthAtom.reportRead();
    return super.controllerBirth;
  }

  @override
  set controllerBirth(TextEditingController value) {
    _$controllerBirthAtom.reportWrite(value, super.controllerBirth, () {
      super.controllerBirth = value;
    });
  }

  late final _$controllerGesAgeAtom =
      Atom(name: '_EditprofileStoreBase.controllerGesAge', context: context);

  @override
  TextEditingController get controllerGesAge {
    _$controllerGesAgeAtom.reportRead();
    return super.controllerGesAge;
  }

  @override
  set controllerGesAge(TextEditingController value) {
    _$controllerGesAgeAtom.reportWrite(value, super.controllerGesAge, () {
      super.controllerGesAge = value;
    });
  }

  late final _$imagemAtom =
      Atom(name: '_EditprofileStoreBase.imagem', context: context);

  @override
  XFile? get imagem {
    _$imagemAtom.reportRead();
    return super.imagem;
  }

  @override
  set imagem(XFile? value) {
    _$imagemAtom.reportWrite(value, super.imagem, () {
      super.imagem = value;
    });
  }

  late final _$idLogadoAtom =
      Atom(name: '_EditprofileStoreBase.idLogado', context: context);

  @override
  String? get idLogado {
    _$idLogadoAtom.reportRead();
    return super.idLogado;
  }

  @override
  set idLogado(String? value) {
    _$idLogadoAtom.reportWrite(value, super.idLogado, () {
      super.idLogado = value;
    });
  }

  late final _$uploadAtom =
      Atom(name: '_EditprofileStoreBase.upload', context: context);

  @override
  bool get upload {
    _$uploadAtom.reportRead();
    return super.upload;
  }

  @override
  set upload(bool value) {
    _$uploadAtom.reportWrite(value, super.upload, () {
      super.upload = value;
    });
  }

  late final _$urlImagemRecAtom =
      Atom(name: '_EditprofileStoreBase.urlImagemRec', context: context);

  @override
  String get urlImagemRec {
    _$urlImagemRecAtom.reportRead();
    return super.urlImagemRec;
  }

  @override
  set urlImagemRec(String value) {
    _$urlImagemRecAtom.reportWrite(value, super.urlImagemRec, () {
      super.urlImagemRec = value;
    });
  }

  @override
  String toString() {
    return '''
controllerNameChild: ${controllerNameChild},
controllerBirth: ${controllerBirth},
controllerGesAge: ${controllerGesAge},
imagem: ${imagem},
idLogado: ${idLogado},
upload: ${upload},
urlImagemRec: ${urlImagemRec}
    ''';
  }
}
