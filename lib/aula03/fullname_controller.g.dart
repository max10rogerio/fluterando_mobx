// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fullname_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FullNameController on FullNameBase, Store {
  Computed<String> _$fullNameComputed;

  @override
  String get fullName =>
      (_$fullNameComputed ??= Computed<String>(() => super.fullName)).value;

  final _$firstNameAtom = Atom(name: 'FullNameBase.firstName');

  @override
  String get firstName {
    _$firstNameAtom.context.enforceReadPolicy(_$firstNameAtom);
    _$firstNameAtom.reportObserved();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.context.conditionallyRunInAction(() {
      super.firstName = value;
      _$firstNameAtom.reportChanged();
    }, _$firstNameAtom, name: '${_$firstNameAtom.name}_set');
  }

  final _$lastNameAtom = Atom(name: 'FullNameBase.lastName');

  @override
  String get lastName {
    _$lastNameAtom.context.enforceReadPolicy(_$lastNameAtom);
    _$lastNameAtom.reportObserved();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.context.conditionallyRunInAction(() {
      super.lastName = value;
      _$lastNameAtom.reportChanged();
    }, _$lastNameAtom, name: '${_$lastNameAtom.name}_set');
  }

  final _$FullNameBaseActionController = ActionController(name: 'FullNameBase');

  @override
  dynamic changeFirstName(String newName) {
    final _$actionInfo = _$FullNameBaseActionController.startAction();
    try {
      return super.changeFirstName(newName);
    } finally {
      _$FullNameBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String newName) {
    final _$actionInfo = _$FullNameBaseActionController.startAction();
    try {
      return super.changeLastName(newName);
    } finally {
      _$FullNameBaseActionController.endAction(_$actionInfo);
    }
  }
}
