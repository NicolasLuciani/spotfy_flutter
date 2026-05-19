import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        leading: const Icon(
          Icons.search,
          color: Colors.black,
        ),

        title: Image.asset(
          
          'assets/logo_spotify.png',
          height: 40,
        ),


        centerTitle: true,

        
        actions: const [
          Padding (
            padding: EdgeInsets.only(right: 16),

            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )

        ],
      ),

      body: const Center(
        child: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),

    );
  }
}