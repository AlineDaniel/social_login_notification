// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_drawer.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyDrawerStore on MyDrawerStoreBase, Store {
  late final _$selectedMenuAtom =
      Atom(name: 'MyDrawerStoreBase.selectedMenu', context: context);

  @override
  int get selectedMenu {
    _$selectedMenuAtom.reportRead();
    return super.selectedMenu;
  }

  @override
  set selectedMenu(int value) {
    _$selectedMenuAtom.reportWrite(value, super.selectedMenu, () {
      super.selectedMenu = value;
    });
  }

  late final _$MyDrawerStoreBaseActionController =
      ActionController(name: 'MyDrawerStoreBase', context: context);

  @override
  void setSelectedMenu(int menu) {
    final _$actionInfo = _$MyDrawerStoreBaseActionController.startAction(
        name: 'MyDrawerStoreBase.setSelectedMenu');
    try {
      return super.setSelectedMenu(menu);
    } finally {
      _$MyDrawerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedMenu: ${selectedMenu}
    ''';
  }
}
