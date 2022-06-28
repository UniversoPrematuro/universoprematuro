// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterStore on _RegisterStoreBase, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_RegisterStoreBase.isValid'))
      .value;

  late final _$controllerNameMotherAtom =
      Atom(name: '_RegisterStoreBase.controllerNameMother', context: context);

  @override
  TextEditingController get controllerNameMother {
    _$controllerNameMotherAtom.reportRead();
    return super.controllerNameMother;
  }

  @override
  set controllerNameMother(TextEditingController value) {
    _$controllerNameMotherAtom.reportWrite(value, super.controllerNameMother,
        () {
      super.controllerNameMother = value;
    });
  }

  late final _$controllerEmailAtom =
      Atom(name: '_RegisterStoreBase.controllerEmail', context: context);

  @override
  TextEditingController get controllerEmail {
    _$controllerEmailAtom.reportRead();
    return super.controllerEmail;
  }

  @override
  set controllerEmail(TextEditingController value) {
    _$controllerEmailAtom.reportWrite(value, super.controllerEmail, () {
      super.controllerEmail = value;
    });
  }

  late final _$controllerPassAtom =
      Atom(name: '_RegisterStoreBase.controllerPass', context: context);

  @override
  TextEditingController get controllerPass {
    _$controllerPassAtom.reportRead();
    return super.controllerPass;
  }

  @override
  set controllerPass(TextEditingController value) {
    _$controllerPassAtom.reportWrite(value, super.controllerPass, () {
      super.controllerPass = value;
    });
  }

  late final _$idLogadoAtom =
      Atom(name: '_RegisterStoreBase.idLogado', context: context);

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

  late final _$saveAsyncAction =
      AsyncAction('_RegisterStoreBase.save', context: context);

  @override
  Future<User?> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$_RegisterStoreBaseActionController =
      ActionController(name: '_RegisterStoreBase', context: context);

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePass(String value) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.changePass');
    try {
      return super.changePass(value);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic registerUser(UserModel user) {
    final _$actionInfo = _$_RegisterStoreBaseActionController.startAction(
        name: '_RegisterStoreBase.registerUser');
    try {
      return super.registerUser(user);
    } finally {
      _$_RegisterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerNameMother: ${controllerNameMother},
controllerEmail: ${controllerEmail},
controllerPass: ${controllerPass},
idLogado: ${idLogado},
isValid: ${isValid}
    ''';
  }
}
