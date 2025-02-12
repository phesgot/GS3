import 'package:app_gs3/src/components/widget_layout_padrao.dart';
import 'package:flutter/material.dart';

class PageCartoes extends StatelessWidget {
  const PageCartoes({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLayoutPadrao(widget: Center(
      child: Text("Cartões", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
    ));
  }
}
