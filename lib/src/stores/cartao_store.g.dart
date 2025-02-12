// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartaoStore on _CartaoStore, Store {
  Computed<List<ModelLancamentos>>? _$currentTransactionsComputed;

  @override
  List<ModelLancamentos> get currentTransactions =>
      (_$currentTransactionsComputed ??= Computed<List<ModelLancamentos>>(
              () => super.currentTransactions,
              name: '_CartaoStore.currentTransactions'))
          .value;

  late final _$visibilidadeAtom =
      Atom(name: '_CartaoStore.visibilidade', context: context);

  @override
  bool get visibilidade {
    _$visibilidadeAtom.reportRead();
    return super.visibilidade;
  }

  @override
  set visibilidade(bool value) {
    _$visibilidadeAtom.reportWrite(value, super.visibilidade, () {
      super.visibilidade = value;
    });
  }

  late final _$cartaoSelecionadoIndexAtom =
      Atom(name: '_CartaoStore.cartaoSelecionadoIndex', context: context);

  @override
  int get cartaoSelecionadoIndex {
    _$cartaoSelecionadoIndexAtom.reportRead();
    return super.cartaoSelecionadoIndex;
  }

  @override
  set cartaoSelecionadoIndex(int value) {
    _$cartaoSelecionadoIndexAtom
        .reportWrite(value, super.cartaoSelecionadoIndex, () {
      super.cartaoSelecionadoIndex = value;
    });
  }

  late final _$listaDeCartoesAtom =
      Atom(name: '_CartaoStore.listaDeCartoes', context: context);

  @override
  List<ModelCartao> get listaDeCartoes {
    _$listaDeCartoesAtom.reportRead();
    return super.listaDeCartoes;
  }

  @override
  set listaDeCartoes(List<ModelCartao> value) {
    _$listaDeCartoesAtom.reportWrite(value, super.listaDeCartoes, () {
      super.listaDeCartoes = value;
    });
  }

  late final _$_CartaoStoreActionController =
      ActionController(name: '_CartaoStore', context: context);

  @override
  void toogleVisibilidade() {
    final _$actionInfo = _$_CartaoStoreActionController.startAction(
        name: '_CartaoStore.toogleVisibilidade');
    try {
      return super.toogleVisibilidade();
    } finally {
      _$_CartaoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCartaoSelecionado(int index) {
    final _$actionInfo = _$_CartaoStoreActionController.startAction(
        name: '_CartaoStore.setCartaoSelecionado');
    try {
      return super.setCartaoSelecionado(index);
    } finally {
      _$_CartaoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
visibilidade: ${visibilidade},
cartaoSelecionadoIndex: ${cartaoSelecionadoIndex},
listaDeCartoes: ${listaDeCartoes},
currentTransactions: ${currentTransactions}
    ''';
  }
}
