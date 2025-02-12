import 'package:mobx/mobx.dart';

part 'barra_de_navegacao_store.g.dart';

class BarraDeNavegacaoStore = _BarraDeNavegacaoStore with _$BarraDeNavegacaoStore;

abstract class _BarraDeNavegacaoStore with Store {

  @observable
  int currentPageIndex = 0;

  @action
  void setCurrentPageIndex(int value) => currentPageIndex = value;

}