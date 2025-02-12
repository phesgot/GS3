import 'package:flutter/material.dart';
import '../../components/widget_appbar_secundaria.dart';

class PageMensagens extends StatelessWidget {
  const PageMensagens({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetAppbarSecundaria(
      titulo: "Mensagens",
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
          child: Text("Mensagens"),
        ),
      ),
    );
  }
}
