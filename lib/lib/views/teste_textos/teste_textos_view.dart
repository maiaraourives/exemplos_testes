import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TesteTextosView extends StatelessWidget {
  const TesteTextosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Textos'),
        ),
        body: SizedBox(
          child: TextLiquidFill(
            text: 'Abase',
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.redAccent,
            textStyle: const TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          
        ));
  }
}
