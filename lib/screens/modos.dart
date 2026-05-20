import 'package:flutter/material.dart';
import 'home.dart';

class Modos extends StatelessWidget { // StatelessWidget = widget sem alteração de estado.
  const Modos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold = estrutura principal da tela.
      body: Stack( // Stack = permite sobrepor widgets.
        children: [ // children = vários widgets.

          // IMAGEM DE FUNDO
          Container( // Container = widget parecido com uma <div>.
            width: double.infinity, // ocupa toda a largura disponível.
            height: double.infinity, // ocupa toda a altura disponível.

            decoration: const BoxDecoration( // BoxDecoration = estilização visual do Container.
              image: DecorationImage( // DecorationImage = define imagem de fundo do Container.
                image: AssetImage('assets/fundo_modos.png'), // imagem local do projeto.
                fit: BoxFit.cover, // faz a imagem ocupar toda a tela sem distorcer.
              ),
            ),
          ),

          SafeArea( // SafeArea evita que o conteúdo fique cortado pela câmera/notch.
            child: Padding( // child = apenas um widget, Padding = espaçamento interno.
              padding: const EdgeInsets.all(24), // padding de 24 pixels em todos os lados.
              child: Column( // Column = organiza os widgets em coluna/vertical.
                children: [ // children = vários widgets dentro da Column.

                  // LOGO
                  Image.asset( // widget para mostrar imagem local.
                    'assets/logo_spotify.png', // caminho da imagem.
                    width: 180, // largura da imagem.
                  ),

                  const Spacer(), // ocupa automaticamente o espaço vazio disponível.

                  // TEXTO PRINCIPAL
                  const Text( // widget para mostrar texto.
                    'Choose mode', // texto exibido na tela.
                    textAlign: TextAlign.center, // alinha o texto ao centro.
                    style: TextStyle( // estilização do texto.
                      color: Colors.white, // cor do texto.
                      fontSize: 32, // tamanho da fonte.
                      fontWeight: FontWeight.bold, // texto em negrito.
                    ),
                  ),

                  const SizedBox(height: 40), // cria espaço vertical entre widgets.

                Row( // Row = organiza widgets horizontalmente.
                  mainAxisAlignment: MainAxisAlignment.spaceAround, // distribui os widgets com espaço ao redor.
                  children: [ // children = vários widgets dentro da Row.

                    Column( // Column = organiza widgets verticalmente.
                      children: [ // children = vários widgets dentro da Column.

                        Container( // Container = widget usado para tamanho, decoração e organização.
                          width: 70, // largura do container.
                          height: 70, // altura do container.

                          decoration: BoxDecoration( // estilização visual do Container.
                            color: const Color.fromARGB(255, 49, 49, 49), // cor de fundo do container.
                            shape: BoxShape.circle, // transforma o container em círculo.
                          ),

                          child: const Icon( // Icon = widget para mostrar ícones.
                            Icons.dark_mode, // ícone do Material Design.
                            color: Colors.white, // cor do ícone.
                            size: 40, // tamanho do ícone.
                          ),
                        ),
                        const SizedBox(height: 10), // espaço vertical entre widgets.

                        const Text( // widget para mostrar texto.
                          'Dark', // texto exibido.
                          style: TextStyle( // estilização do texto.
                            color: Colors.white, // cor do texto.
                            fontSize: 16, // tamanho da fonte.
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

                const SizedBox(height: 70), // espaço vertical entre widgets.

                  // BOTÃO
                  SizedBox( // SizedBox = define tamanho do widget filho.
                    width: double.infinity, // ocupa toda a largura disponível.
                    height: 80, // altura do botão.

                    child: ElevatedButton( // ElevatedButton = botão com fundo e sombra.
                      onPressed: () { // função executada ao clicar no botão.

                        Navigator.pushReplacement( // substitui a tela atual.
                          context, // contexto necessário para navegação.
                          MaterialPageRoute( // define a rota/animação da troca de tela.
                            builder: (context) => const Home(), // constrói a nova tela.
                          ),
                        );

                      },

                      style: ElevatedButton.styleFrom( // estilização do botão.
                        backgroundColor: const Color(0xFF42C83C), // cor de fundo do botão.
                        shape: RoundedRectangleBorder( // define o formato do botão.
                          borderRadius: BorderRadius.circular(20), // bordas arredondadas.
                        ),
                      ),

                      child: const Text( // widget para mostrar texto dentro do botão.
                        'Continue', // texto do botão.
                        style: TextStyle( // estilização do texto.
                          fontSize: 20, // tamanho da fonte.
                          color: Colors.white, // cor do texto.
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30), // espaço vertical entre widgets.
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}