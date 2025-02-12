import 'package:app_gs3/src/components/widget_appbar_primaria.dart';
import 'package:app_gs3/src/stores/barra_de_navegacao_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cartoes/page_cartoes.dart';
import '../fatura/page_fatura.dart';
import '../home/page_home.dart';
import '../shop/page_shop.dart';

class PageBarradenavegacao extends StatefulWidget {
  const PageBarradenavegacao({super.key});

  @override
  State<PageBarradenavegacao> createState() => _BarradenavegacaoState();
}

class _BarradenavegacaoState extends State<PageBarradenavegacao> {
  late BarraDeNavegacaoStore barraDeNavegacaoStore;

  @override
  void didChangeDependencies() {
    barraDeNavegacaoStore = Provider.of<BarraDeNavegacaoStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return WidgetAppbarPrimaria(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Cor de fundo da barra
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            border: Border.all(
              color: Colors.grey.shade100, // Cor da borda
              width: 5, // Espessura da borda
            ),
          ),
          child: Observer(builder: (_) {
            return NavigationBar(
              elevation: 0,
              height: 55,
              indicatorColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              selectedIndex: barraDeNavegacaoStore.currentPageIndex,
              onDestinationSelected: (int index) {
                barraDeNavegacaoStore.setCurrentPageIndex(index);
              },
              destinations: <Widget>[
                NavigationDestination(
                  icon: Image.asset(
                    "images/home.png",
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                  selectedIcon: Image.asset(
                    "images/home.png",
                    width: 30,
                    height: 30,
                    color: Color(0xff089EE3),
                  ),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    "images/arquivo.png",
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                  selectedIcon: Image.asset(
                    "images/arquivo.png",
                    width: 30,
                    height: 30,
                    color: Color(0xff089EE3),
                  ),
                  label: 'Fatura',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    "images/cartao.png",
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                  selectedIcon: Image.asset(
                    "images/cartao.png",
                    width: 30,
                    height: 30,
                    color: Color(0xff089EE3),
                  ),
                  label: 'Cartão',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    "images/shop.png",
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                  selectedIcon: Image.asset(
                    "images/shop.png",
                    width: 30,
                    height: 30,
                    color: Color(0xff089EE3),
                  ),
                  label: 'Shop',
                ),
              ],
            );
          }),
        ),
        body: Observer(
          builder: (_) {
            return <Widget>[
              const PageHome(title: "Lancamentos"),
              const PageFatura(),
              const PageCartoes(),
              const PageShop(),
            ][barraDeNavegacaoStore.currentPageIndex];
          },
        ));
  }
}
