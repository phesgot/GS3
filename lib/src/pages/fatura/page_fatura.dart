import 'package:flutter/material.dart';

import '../../components/widget_layout_padrao.dart';

class PageFatura extends StatelessWidget {
  const PageFatura({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLayoutPadrao(widget: Center(
      child: Text("Fatura", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
    ));
  }
}
