import 'package:app_gs3/src/components/widget_cartao.dart';
import 'package:app_gs3/src/stores/cartao_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class WidgetSliderDeCartoes extends StatelessWidget {
  const WidgetSliderDeCartoes({super.key});

  @override
  Widget build(BuildContext context) {
    final cartaoStore = Provider.of<CartaoStore>(context);


    //Lista de cores a serem selecionada de acordo com a quantidade de cartões na aplicação
    final List<LinearGradient> gradientes = [
      LinearGradient(
          colors: [Color(0xff142E57), Color(0xff2B66BC)], begin: Alignment.centerRight, end: Alignment.centerLeft),
      LinearGradient(
          colors: [Color(0xff00494B), Color(0xff00A1A6)], begin: Alignment.centerRight, end: Alignment.centerLeft),
      LinearGradient(
          colors: [Colors.deepOrange, Colors.orange], begin: Alignment.centerRight, end: Alignment.centerLeft),
      LinearGradient(
          colors: [Colors.red, Colors.red.shade400], begin: Alignment.centerRight, end: Alignment.centerLeft),
    ];

    return Observer(
      builder: (_) => Column(
        children: [
          SizedBox(
            height: 170, // Altura do cartão
            child: PageView.builder(
              itemCount: cartaoStore.listaDeCartoes.length,
              onPageChanged: (index) {
                cartaoStore.setCartaoSelecionado(index);
              },
              itemBuilder: (context, index) {
                final cartao = cartaoStore.listaDeCartoes[index];
                return WidgetCartao(
                  numero: cartao.numero,
                  limite: cartao.limite,
                  melhorDiaDeCompra: cartao.melhorDiaDeCompra,
                  bandeira: cartao.bandeira,
                  cor: gradientes[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
