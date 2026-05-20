import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // StatelessWidget = widget sem alteração de estado.
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold = estrutura principal da tela.
      backgroundColor: const Color.fromARGB(
        255,
        255,
        255,
        255,
      ), // cor de fundo da tela.

      appBar: AppBar(
        // AppBar = barra superior da aplicação.
        backgroundColor: const Color.fromARGB(
          255,
          255,
          255,
          255,
        ), // cor de fundo da AppBar.

        leading: const Icon(
          // leading = widget do lado esquerdo da AppBar.
          Icons.search, // ícone de pesquisa.
          color: Colors.black, // cor do ícone.
        ),

        title: Image.asset(
          // title = widget central da AppBar.
          'assets/logo_spotify.png', // caminho da imagem.
          height: 40, // altura da imagem.
        ),

        centerTitle: true, // centraliza o title da AppBar.

        actions: const [
          // actions = widgets do lado direito da AppBar.
          Padding(
            // Padding = espaçamento interno.
            padding: EdgeInsets.only(
              right: 16,
            ), // adiciona padding apenas na direita.

            child: Icon(
              // Icon = widget para mostrar ícones.
              Icons.more_vert, // ícone de mais opções.
              color: Colors.black, // cor do ícone.
            ),
          ),
        ],
      ),

      // SizedBox é um widget que pode criar um espaço entre widgets.
      body: Column(
        children: [
          SizedBox(height: 30), // espaço entre a AppBar e o card.

          Padding(
            padding: const EdgeInsets.all(4),

            child: Center(
              child: Stack(
                // Stack = permite sobrepor widgets.
                children: [
                  // CARD VERDE
                  Container(
                    width: 350,
                    height: 180,

                    decoration: const BoxDecoration(
                      color: Color(0xFF42C83C),

                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20), // espaçamento interno.

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // alinha tudo à esquerda.
                        children: [
                          const Text(
                            'New Album',

                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Happier Than\nEver',

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Billie Eilish',

                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // IMAGEM DA CANTORA
                  Positioned(
                    right: 0,
                    bottom: -13,

                    child: Image.asset(
                      'assets/Cantora.png',

                      width: 220,
                      height: 260,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
