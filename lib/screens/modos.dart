import 'package:flutter/material.dart';
import 'home.dart';

class Modos extends StatelessWidget {
  const Modos({super.key});

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
                image: AssetImage('assets/fundo_modos.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

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
                    'Choose mode',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [

                        Container(
                          width: 70,
                          height: 70,

                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 49, 49, 49),
                            shape: BoxShape.circle,
                          ),

                          child: const Icon(
                            Icons.dark_mode,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const SizedBox(height: 10),

                        const Text(
                          'Dark',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),


                    Column(
                      children: [

                        Container(
                          width: 70,
                          height: 70,

                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 49, 49, 49),
                            shape: BoxShape.circle,
                          ),

                          child: const Icon(
                            Icons.dark_mode,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const SizedBox(height: 10),

                        const Text(
                          'Light',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),



                const SizedBox(height: 70),

                  // BOTÃO
                  SizedBox(
                    width: double.infinity,
                    height: 80,

                    child: ElevatedButton(
                      onPressed: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
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
                        'Continue',
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