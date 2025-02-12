// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barra_de_navegacao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BarraDeNavegacaoStore on _BarraDeNavegacaoStore, Store {
  late final _$currentPageIndexAtom =
      Atom(name: '_BarraDeNavegacaoStore.currentPageIndex', context: context);

  @override
  int get currentPageIndex {
    _$currentPageIndexAtom.reportRead();
    return super.currentPageIndex;
  }

  @override
  set currentPageIndex(int value) {
    _$currentPageIndexAtom.reportWrite(value, super.currentPageIndex, () {
      super.currentPageIndex = value;
    });
  }

  late final _$_BarraDeNavegacaoStoreActionController =
      ActionController(name: '_BarraDeNavegacaoStore', context: context);

  @override
  void setCurrentPageIndex(int value) {
    final _$actionInfo = _$_BarraDeNavegacaoStoreActionController.startAction(
        name: '_BarraDeNavegacaoStore.setCurrentPageIndex');
    try {
      return super.setCurrentPageIndex(value);
    } finally {
      _$_BarraDeNavegacaoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPageIndex: ${currentPageIndex}
    ''';
  }
}
