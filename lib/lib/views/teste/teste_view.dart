import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:teste/constants/assets/assets_path.dart';
import '../../constants/routes/local_routes.dart';
import '../../widgets/cs_elevated_button.dart';

class TesteView extends StatelessWidget {
  const TesteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
      ),
      body: ListView(
        //padding: const EdgeInsets.all(0),
        children: [
          Image.asset(AssetsPath.ABASE),
          Image.asset(AssetsPath.DOWNLOAD),
          Image.asset(AssetsPath.ABASE),
          Image.asset(AssetsPath.DOWNLOAD),
          Image.asset(AssetsPath.ABASE),
          Image.asset(AssetsPath.DOWNLOAD),
          Image.asset(AssetsPath.ABASE),
          const SizedBox(
            height: 10,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Abase Sistemas e Soluções',
                textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                speed: const Duration(milliseconds: 600),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 600),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          CsElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, LocalRoutes.TESTE_TEXTOS);
            },
            label: 'Teste',
          ),
        ],
      ),
    );
  }
}
