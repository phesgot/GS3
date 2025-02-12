import 'package:flutter/material.dart';

class PageCartoes extends StatelessWidget {
  const PageCartoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Center(
        child: Text("Cartões"),
      ),
    );
  }
}
