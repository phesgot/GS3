import 'package:app_gs3/src/models/model_favoritos.dart';
import 'package:flutter/material.dart';

class WidgetListaMeusFavoritos extends StatelessWidget {
  WidgetListaMeusFavoritos({super.key});

  final List<ModelFavoritos> favoritos = [
    ModelFavoritos(icone: "images/cartao_virtual.png", nome: "Cartão Virtual"),
    ModelFavoritos(icone: "images/cartao_adicional.png", nome: "Cartão Adicional"),
    ModelFavoritos(icone: "images/seguros.png", nome: "Seguro"),
    ModelFavoritos(icone: "images/envelope.png", nome: "Pacotes"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Meus favoritos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Personalizar",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Image.asset(
                          "images/app.png",
                          width: 25,
                          height: 25,
                          color: Color(0xff089EE3),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: favoritos.length,
              separatorBuilder: (_, __) => SizedBox(width: 25),
              padding: EdgeInsets.only(right: 20),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 65,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade50,
                      ),
                      child: Center(
                          child: Image.asset(
                        favoritos[index].icone,
                        width: 40,
                        height: 40,
                      )),
                    ),
                    SizedBox(height: 5),
                    Text(
                      favoritos[index].nome,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
