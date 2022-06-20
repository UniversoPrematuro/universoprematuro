// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editprofile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditprofileStore on _EditprofileStoreBase, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_EditprofileStoreBase.isValid'))
      .value;

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

  late final _$validateNameAsyncAction =
      AsyncAction('_EditprofileStoreBase.validateName', context: context);

  @override
  Future<dynamic> validateName() {
    return _$validateNameAsyncAction.run(() => super.validateName());
  }

  late final _$validateBirthAsyncAction =
      AsyncAction('_EditprofileStoreBase.validateBirth', context: context);

  @override
  Future<dynamic> validateBirth() {
    return _$validateBirthAsyncAction.run(() => super.validateBirth());
  }

  late final _$validateGesAgeAsyncAction =
      AsyncAction('_EditprofileStoreBase.validateGesAge', context: context);

  @override
  Future<dynamic> validateGesAge() {
    return _$validateGesAgeAsyncAction.run(() => super.validateGesAge());
  }

  @override
  String toString() {
    return '''
controllerNameChild: ${controllerNameChild},
controllerBirth: ${controllerBirth},
controllerGesAge: ${controllerGesAge},
isValid: ${isValid}
    ''';
  }
}
