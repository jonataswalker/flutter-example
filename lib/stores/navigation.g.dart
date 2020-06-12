// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationStore on _NavigationStore, Store {
  final _$selectedIndexAtom = Atom(name: '_NavigationStore.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$_NavigationStoreActionController =
      ActionController(name: '_NavigationStore');

  @override
  dynamic setSelectedIndex(dynamic index) {
    final _$actionInfo = _$_NavigationStoreActionController.startAction(
        name: '_NavigationStore.setSelectedIndex');
    try {
      return super.setSelectedIndex(index);
    } finally {
      _$_NavigationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic selectScreen() {
    final _$actionInfo = _$_NavigationStoreActionController.startAction(
        name: '_NavigationStore.selectScreen');
    try {
      return super.selectScreen();
    } finally {
      _$_NavigationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
