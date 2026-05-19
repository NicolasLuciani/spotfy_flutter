import 'package:flutter/material.dart';
import 'package:spotfy_flutter/screens/modos.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // IMAGEM DE FUNDO
          Container(
            width: double.infinity,
            height: double.infinity,

            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fundo_get.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // CONTEÚDO
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [

                  // LOGO
                  Image.asset(
                    'assets/logo_spotify.png',
                    width: 180,
                  ),

                  const Spacer(),

                  // TEXTO PRINCIPAL
                  const Text(
                    'Enjoy Listening To Music',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // BOTÃO
                  SizedBox(
                    width: double.infinity,
                    height: 80,

                    child: ElevatedButton(
                      onPressed: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Modos(),
                          ),
                        );

                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF42C83C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}