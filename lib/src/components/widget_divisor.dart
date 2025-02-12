import 'package:flutter/material.dart';

class WidgetDivisor extends StatelessWidget {
  const WidgetDivisor({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0.7,
      color: color ?? Colors.white,
      endIndent: 20,
      indent: 20,
    );
  }
}
