import 'package:app_gs3/src/pages/barra_de_navegacao/page_barra_de_navegacao.dart';
import 'package:app_gs3/src/pages/mensagens/page_mensagens.dart';
import 'package:app_gs3/src/pages/notificacoes/page_notificacoes.dart';
import 'package:app_gs3/src/stores/barra_de_navegacao_store.dart';
import 'package:app_gs3/src/stores/cartao_store.dart';
import 'package:app_gs3/src/utils/app_rotas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => BarraDeNavegacaoStore()),
        Provider(create: (_) => CartaoStore()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App bancario',
        theme: ThemeData(
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return TextStyle(color: Color(0xff089EE3), fontWeight: FontWeight.bold);
                }
                return TextStyle(color: Colors.grey);
              },
            ),
          ),
        ),
        home: const PageBarradenavegacao(),
        routes: {
          AppRotas.mensagens: (context) => const PageMensagens(),
          AppRotas.notificacoes: (context) => const PageNotificacoes(),
        },
      ),
    );
  }
}
