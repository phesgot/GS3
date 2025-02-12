import 'package:app_gs3/src/utils/app_rotas.dart';
import 'package:flutter/material.dart';

class WidgetAppbarPrimaria extends StatelessWidget {
  const WidgetAppbarPrimaria({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  final Widget body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff3C6AB2),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Olá, ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: "Cliente",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRotas.mensagens);
            },
            icon: Image.asset(
              "images/mensagem.png",
              width: 25,
              height: 25,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRotas.notificacoes);
            },
            icon: Image.asset(
              "images/notificacao.png",
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: body,
    );
  }
}
