import 'package:flutter/material.dart';
import 'package:spotfy_flutter/screens/modos.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(  // body é o que aparece na tela, e o Stack permite sobrepor widgets
        children: [ // children pode conter vários widgets, já o child só pode conter um widget.

          // IMAGEM DE FUNDO
          Container( // Container é um widget que pode conter outros widgets, como uma <div>.
            width: double.infinity, // double.indinity ocupa nesse caso toda a largura da tela.
            height: double.infinity, // double.indinity ocupa nesse caso toda a altura da tela.

            decoration: const BoxDecoration( // css do container, nesse caso a imagem de fundo.
              image: DecorationImage( // widget para colocar uma imagem, nesse caso a imagem de fundo.
                image: AssetImage('assets/fundo_get.png'), // imagem que ira ficar no fundo.
                fit: BoxFit.cover, //BoxFit.cover faz a imagem ocupar toda a tela, sem distorcer a imagem.
              ),
            ),
          ),

          // CONTEÚDO
          SafeArea( // SafeArea é um widget que evita que o conteúdo fique cortado, por baixo da camera, etc.
            child: Padding( // child = apenas um widget, padding igual no HTML.
              padding: const EdgeInsets.all(24), // EdgeInsets é um widget que define os paddings, .all para todos os lados.
              child: Column( // Column é um widget que organiza os outros widgets em coluna.
                children: [ // children = vários widgets, column organiza os widgets nesse caso em coluna.

                  // LOGO
                  Image.asset( // widget para colocar uma imagem, nesse caso a logo do spotify.
                    'assets/logo_spotify.png', // imagem da logo do spotify.
                    width: 180, // largura da imagem, nesse caso 180 pixels.
                  ),

                  const Spacer(), // ocupa o espaço invisível entre os widgets.

                  // TEXTO PRINCIPAL
                  const Text( // widget para colocar um texto
                    'Enjoy Listening To Music', // texto
                    textAlign: TextAlign.center, // alinha o texto no centro
                    style: TextStyle( // estilizar o texto
                      color: Colors.white, // cor do texto, nesse caso branco
                      fontSize: 32, // tamanho da fonte, nesse caso 32 pixels
                      fontWeight: FontWeight.bold, // negrito
                    ),
                  ),

                  const SizedBox(height: 16), // SizedBox é um widget que cria um espaço entre os widgets.

                  const Text( // widget para colocar um texto
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                    textAlign: TextAlign.center,// alinha o texto no centro
                    style: TextStyle( // estilizar o texto
                      color: Colors.white70, // cor do texto, nesse caso branco com opacidade de 70%
                      fontSize: 16, // tamanho da fonte, nesse caso 16 pixels
                    ),
                  ),

                  const SizedBox(height: 40), // SizedBox é um widget que pode criar um espaço entre os widgets

                  // BOTÃO
                  SizedBox( // SizedBox pode ser usado para definir a largura e altura de um widget filho.
                    width: double.infinity, // double.indinity ocupa toda a largura disponível.
                    height: 80, // altura do botão, nesse caso 80 pixels.

                    child: ElevatedButton( // widget para criar um botão elevado, que tem uma sombra e um fundo colorido.
                      onPressed: () { // função que é executada quando o botão é pressionado.

                        Navigator.pushReplacement( // Navigator é um widget que gerencia as rotas da aplicação.
                          context, // context é o contexto da aplicação, necessário para navegar entre as telas.
                          MaterialPageRoute( // MaterialPageRoute é um widget que define a transição entre as telas.
                            builder: (context) => const Modos(),  // builder é a função que constrói a nova tela.
                          ),
                        );

                      },

                      style: ElevatedButton.styleFrom( // estilizar o botão
                        backgroundColor: const Color(0xFF42C83C), // cor de fundo do botão.
                        shape: RoundedRectangleBorder( // shape define a forma do botão, com bordas arredondadas.
                          borderRadius: BorderRadius.circular(20), // BorderRadius.circular define o raio das bordas.
                        ),
                      ),

                      child: const Text( // widget para colocar um texto, nesse caso o texto do botão.
                        'Get Started', // texto do botão
                        style: TextStyle( // estilizar o texto do botão
                          fontSize: 20, // tamanho da fonte do texto do botão, nesse caso 20 pixels.
                          color: Colors.white, // cor do texto do botão, nesse caso branco.
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30), // SizedBox é um widget que pode criar um espaço entre widgets.
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}