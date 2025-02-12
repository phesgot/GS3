import 'package:flutter/material.dart';

import '../../components/widget_layout_padrao.dart';

class PageShop extends StatelessWidget {
  const PageShop({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLayoutPadrao(widget: Center(
      child: Text("Shop", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
    ));
  }
}
