import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../stores/cartao_store.dart';

class WidgetListaLancamentos extends StatefulWidget {
  const WidgetListaLancamentos({super.key});

  @override
  State<WidgetListaLancamentos> createState() => _WidgetListaLancamentosState();
}

class _WidgetListaLancamentosState extends State<WidgetListaLancamentos> {
  late CartaoStore cartaoStore;

  @override
  void didChangeDependencies() {
    cartaoStore = Provider.of<CartaoStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Observer(
        builder: (_) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Últimos lançamentos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ver todos",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                          color: Color(0xff089EE3),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: cartaoStore.currentTransactions.length,
                separatorBuilder: (_, __) => Divider(
                  height: 0.7,
                  color: Colors.grey.shade300,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final lancamentos = cartaoStore.currentTransactions[index];
                  return ListTile(
                      leading: Container(
                        height: 60,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade50,
                        ),
                        child: Center(child: Image.asset(lancamentos.icone)),
                      ),
                      title: Text(
                        lancamentos.titulo,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        lancamentos.dataHora,
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "R\$ ${lancamentos.valor}",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(lancamentos.parcelamento ?? "")
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
