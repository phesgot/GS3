import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../stores/cartao_store.dart';

class WidgetCartao extends StatefulWidget {
  const WidgetCartao({
    super.key,
    required this.numero,
    required this.limite,
    required this.melhorDiaDeCompra,
    required this.bandeira,
    required this.cor,
  });

  final String numero;
  final String limite;
  final String melhorDiaDeCompra;
  final String bandeira;
  final LinearGradient cor;

  @override
  State<WidgetCartao> createState() => _WidgetCartaoState();
}

class _WidgetCartaoState extends State<WidgetCartao> {
  late CartaoStore cartaoStore;

  @override
  void didChangeDependencies() {
    cartaoStore = Provider.of<CartaoStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: Container(
              width: 335,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: widget.cor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 80,
                                  color: Colors.transparent,
                                  child: Image.asset(widget.bandeira),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Observer(
                                      builder: (_) => Text(
                                        cartaoStore.visibilidade
                                            ? '•••• ${widget.numero.substring(15)}'
                                            : widget.numero,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'GS3 TEC',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Observer(
                          builder: (_) => IconButton(
                            onPressed: () {
                              cartaoStore.toogleVisibilidade();
                            },
                            icon: cartaoStore.visibilidade
                                ? Icon(Icons.visibility_off_outlined)
                                : Icon(Icons.visibility_outlined),
                            color: Color(0xff089EE3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 0.7, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Limite disponível',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 4),
                            Observer(
                              builder: (_) => Text(
                                cartaoStore.visibilidade ? "R\$ ****" : "R\$ ${widget.limite}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Melhor dia de compra',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              widget.melhorDiaDeCompra,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
