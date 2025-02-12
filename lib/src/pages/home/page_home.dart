import 'package:app_gs3/src/components/widget_divisor.dart';
import 'package:app_gs3/src/components/widget_lista_meus_favoritos.dart';
import 'package:app_gs3/src/components/widget_slider_de_cartoes.dart';
import 'package:flutter/material.dart';

import '../../components/widget_layout_padrao.dart';
import '../../components/widget_lista_lancamentos.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key, required String title});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    const double espacamento = 20;

    return WidgetLayoutPadrao(
        widget: Center(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        WidgetDivisor(),
        SizedBox(height: espacamento),
        WidgetSliderDeCartoes(),
        SizedBox(height: espacamento),
        WidgetDivisor(),
        SizedBox(height: espacamento),
        WidgetListaMeusFavoritos(),
        SizedBox(height: espacamento),
        WidgetDivisor(
          color: Colors.grey.shade300,
        ),
        SizedBox(height: espacamento),
        Expanded(child: WidgetListaLancamentos()),
      ],
    )));
  }
}
