// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CatStore on _CatStoreBase, Store {
  late final _$catListAtom =
      Atom(name: '_CatStoreBase.catList', context: context);

  @override
  List<CatEntity> get catList {
    _$catListAtom.reportRead();
    return super.catList;
  }

  @override
  set catList(List<CatEntity> value) {
    _$catListAtom.reportWrite(value, super.catList, () {
      super.catList = value;
    });
  }

  late final _$_CatStoreBaseActionController =
      ActionController(name: '_CatStoreBase', context: context);

  @override
  void setCatList(List<CatEntity> value) {
    final _$actionInfo = _$_CatStoreBaseActionController.startAction(
        name: '_CatStoreBase.setCatList');
    try {
      return super.setCatList(value);
    } finally {
      _$_CatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
catList: ${catList}
    ''';
  }
}
