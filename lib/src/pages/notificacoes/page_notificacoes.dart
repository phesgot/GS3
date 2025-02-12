import 'package:app_gs3/src/components/widget_appbar_secundaria.dart';
import 'package:flutter/material.dart';

import '../../components/widget_layout_padrao.dart';

class PageNotificacoes extends StatelessWidget {
  const PageNotificacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetAppbarSecundaria(
      titulo: "Notificações",
      body: WidgetLayoutPadrao(
          widget: Center(
        child: Text(
          "Notificações",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
