import 'package:flutter/material.dart';
import 'package:teste/constants/routes/local_routes.dart';
import 'package:teste/views/home/home_view.dart';
import 'package:teste/views/minha_conta/minha_conta_view.dart';
import 'package:teste/views/teste/teste_view.dart';
import 'package:teste/views/teste_textos/teste_textos_view.dart';

void main() {
  runApp(const ExemplosApp());
}

class ExemplosApp extends StatelessWidget {
  const ExemplosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplos App',
      debugShowCheckedModeBanner: false,
      initialRoute: LocalRoutes.HOME,
      routes: {
        LocalRoutes.HOME: (context) {
          return const HomeView();
        },
        LocalRoutes.MINHA_CONTA: (_) => const MinhaContaView(),
        LocalRoutes.TESTE: (_) => const TesteView(),
        LocalRoutes.TESTE_TEXTOS: (_) => const TesteTextosView(),
      },
    );
  }
}
