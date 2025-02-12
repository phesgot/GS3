import 'package:flutter/material.dart';
import '../../components/widget_appbar_secundaria.dart';
import '../../components/widget_layout_padrao.dart';

class PageMensagens extends StatelessWidget {
  const PageMensagens({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetAppbarSecundaria(
      titulo: "Mensagens",
      body: WidgetLayoutPadrao(
          widget: Center(
        child: Text(
          "Mensagens",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
