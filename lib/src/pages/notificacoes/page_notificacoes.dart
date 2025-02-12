import 'package:app_gs3/src/components/widget_appbar_secundaria.dart';
import 'package:flutter/material.dart';

class PageNotificacoes extends StatelessWidget {
  const PageNotificacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetAppbarSecundaria(
      titulo: "Notificações",
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff3C6AB2),
              Color(0xffE1E8F3),
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: const Center(
          child: Text("Notificações"),
        ),
      ),
    );
  }
}
