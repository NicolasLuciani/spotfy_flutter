import 'package:flutter/material.dart';
import 'package:spotfy_flutter/screens/get_started.dart';

import 'modos.dart';

class Carregamento extends StatefulWidget {
  const Carregamento({super.key});

  @override
  State<Carregamento> createState() => _CarregamentoState();
}

class _CarregamentoState extends State<Carregamento> {

  @override
  void initState() {
    super.initState();

    mudarTela();
  }

  void mudarTela() async {

    await Future.delayed(
      const Duration(seconds: 3),
    );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const GetStarted(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: Center(
        child: Image.asset(
          'assets/logo_spotify.png',
          width: 180,
        ),
      ),
    );
  }
}