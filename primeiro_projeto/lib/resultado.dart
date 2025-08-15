import 'dart:math';

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});




  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    int escolhaDoUsuario = args["escolhaDoUsuario"];
    var imagens = ['images/pedra.png','images/papel.png','images/tesoura.png'];
    var random = Random();
    int escolhaCPU = random.nextInt(3);
    var resultadoImagens = ['images/vitoria.png','images/derrota.png','images/empate.png'];
    var resultado;
    var resultadoString = "";

    if (escolhaDoUsuario == 0 && escolhaCPU == 2 || escolhaDoUsuario == 1 && escolhaCPU == 0 || escolhaDoUsuario == 2 && escolhaCPU == 1 ){
       resultado = 0;
       resultadoString = "Vitória";
    } else if(escolhaDoUsuario == escolhaCPU){
      resultado = 2;
      resultadoString = "Empate";
    }else{
      resultado = 1;
      resultadoString = "Derrota";
    }




    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedra, Papel, Tesoura", style:
          TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,)),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Escolha do APP
            Column(
              children: [
                Image.asset(imagens[escolhaCPU], height: 100),
                const SizedBox(height: 10),
                const Text(
                  "Escolha do APP",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Sua Escolha
            Column(
              children: [
                Image.asset(imagens[escolhaDoUsuario], height: 100),
                const SizedBox(height: 10),
                const Text(
                  "Sua Escolha",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // Resultado
            Column(
              children: [
                Image.asset(resultadoImagens[resultado], height: 100),
                const SizedBox(height: 10),
                 Text(
                  '$resultadoString',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 50),

            // Botão jogar novamente
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                "Jogar novamente",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

