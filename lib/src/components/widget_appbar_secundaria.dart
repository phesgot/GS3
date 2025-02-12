import 'package:flutter/material.dart';

class WidgetAppbarSecundaria extends StatelessWidget {
  const WidgetAppbarSecundaria({
    super.key,
    required this.titulo,
    required this.body,
  });

  final String titulo;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3C6AB2),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          titulo,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: body,
    );
  }
}
