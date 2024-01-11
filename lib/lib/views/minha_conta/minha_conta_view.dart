import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:teste/constants/assets/assets_path.dart';
import 'package:teste/constants/routes/local_routes.dart';
import 'package:teste/widgets/cs_elevated_button.dart';

class MinhaContaView extends StatefulWidget {
  const MinhaContaView({super.key});

  @override
  State<MinhaContaView> createState() => _MinhaContaView();
}

class _MinhaContaView extends State<MinhaContaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('Minha conta'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AssetsPath.DOWNLOAD),
              const SizedBox(height: 20),
              Text(
                'Parabéns, você logou com sucesso',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add,
                    size: 30,
                    
                  ),
                  Icon(
                    Icons.more,
                    size: 30,
                  ),
                  Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Abase Sitemas e Soluções',
                    textStyle: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26),
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
                  Navigator.pushNamed(context, LocalRoutes.TESTE);
                },
                label: 'Teste',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
