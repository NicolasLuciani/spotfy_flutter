import 'package:flutter/material.dart';
import 'package:spotfy_flutter/screens/get_started.dart';

import 'modos.dart';

class Carregamento extends StatefulWidget { // StatefulWidget = widget que pode mudar de estado.
  const Carregamento({super.key});

  @override
  State<Carregamento> createState() => _CarregamentoState(); // createState cria o estado do widget.
}

class _CarregamentoState extends State<Carregamento> {

  @override
  void initState() { // initState executa apenas uma vez quando a tela inicia.
    super.initState(); // chama o initState da classe pai.

    mudarTela(); // chama a função para trocar de tela.
  }

  void mudarTela() async { // async permite usar await.

    await Future.delayed( // Future.delayed espera um tempo antes de continuar o código.
      const Duration(seconds: 3), // espera 3 segundos.
    );

    Navigator.pushReplacement( // substitui a tela atual.
      context, // contexto necessário para navegação.
      MaterialPageRoute( // define a rota/animação da troca de tela.
        builder: (context) => const GetStarted(), // constrói a nova tela.
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold = estrutura principal da tela.

      backgroundColor: Colors.white, // cor de fundo da tela.

      body: Center( // Center centraliza o widget filho.
        child: Image.asset( // widget para mostrar imagem local.
          'assets/logo_spotify.png', // caminho da imagem.
          width: 180, // largura da imagem.
        ),
      ),
    );
  }
}