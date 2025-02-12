import 'package:app_gs3/src/models/model_cartao.dart';
import 'package:app_gs3/src/models/model_lancamentos.dart';
import 'package:mobx/mobx.dart';

part 'cartao_store.g.dart';

class CartaoStore = _CartaoStore with _$CartaoStore;

abstract class _CartaoStore with Store {

  //toogle define a visibilidade dos dados do cartão
  @observable
  bool visibilidade = true; // começa oculto

  @action
  void toogleVisibilidade() => visibilidade = !visibilidade;


  @observable
  int cartaoSelecionadoIndex = 0; // Índice do cartão exibido no PageView

  @observable
  List<ModelCartao> listaDeCartoes = [
    ModelCartao(
      numero: "4354 5854 6545 5621",
      limite: "7.867,25",
      melhorDiaDeCompra: "20",
      bandeira: "images/mastercard.png",
      lancamentos: [
        ModelLancamentos(
          icone: "images/carro.png",
          titulo: "Uber",
          dataHora: "11/02 às 22:16",
          valor: "15,22",
        ),
        ModelLancamentos(
          icone: "images/carro.png",
          titulo: "Uber",
          dataHora: "11/02 às 21:01",
          valor: "20,01",
        ),
        ModelLancamentos(
          icone: "images/celular.png",
          titulo: "Apple",
          dataHora: "10/02 às 09:20",
          valor: "16,05",
        ),
        ModelLancamentos(
            icone: "images/shopping.png",
            titulo: "Extra",
            dataHora: "09/02 às 08:15",
            valor: "400,00",
            parcelamento: "12x"),
        ModelLancamentos(
            icone: "images/celular.png",
            titulo: "AppStore",
            dataHora: "09/02 às 07:25",
            valor: "85,50",
            parcelamento: "2x"),
        ModelLancamentos(
          icone: "images/carro.png",
          titulo: "Uber",
          dataHora: "08/02 às 17:00",
          valor: "90,99",
          parcelamento: "3x",
        ),
        ModelLancamentos(
          icone: "images/shopping.png",
          titulo: "Magazine",
          dataHora: "08/02 às 16:30",
          valor: "5,85",
        ),
      ],
    ),
    ModelCartao(
      numero: "3210 5489 2125 8974",
      limite: "2.888,45",
      melhorDiaDeCompra: "05",
      bandeira: "images/visa.png",
      lancamentos: [
        ModelLancamentos(
          icone: "images/shopping.png",
          titulo: "Extra",
          dataHora: "11/02 às 08:16",
          valor: "250,00",
        ),
        ModelLancamentos(
          icone: "images/shopping.png",
          titulo: "Magazine",
          dataHora: "11/02 às 10:01",
          valor: "350,00",
          parcelamento: "4x"
        ),
        ModelLancamentos(
          icone: "images/carro.png",
          titulo: "Uber",
          dataHora: "10/02 às 06:20",
          valor: "54,05",
        ),
        ModelLancamentos(
          icone: "images/celular.png",
          titulo: "PlayStore",
          dataHora: "10/02 às 19:20",
          valor: "45,05",
        ),
      ],
    )
  ];


  @computed
  List<ModelLancamentos> get currentTransactions => listaDeCartoes[cartaoSelecionadoIndex].lancamentos;

  @action
  void setCartaoSelecionado(int index) {
    cartaoSelecionadoIndex = index;
  }
}
