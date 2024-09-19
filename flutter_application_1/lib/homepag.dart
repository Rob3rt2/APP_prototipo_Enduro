import 'package:flutter/material.dart';

class Enduro{
  final String img;
  final String descricao;
  final String desenvolvedora;
  final String console;

  const Enduro(
    this.img,
    this.descricao,
    this.desenvolvedora,
    this.console
  ); 
}

class HomePag extends StatelessWidget {
  const HomePag({super.key});

 final Enduro info = const Enduro('img/end.jpg', 'Enduro é um jogo de 1983, O objetivo da corrida é ultrapassar uma certa quantidade de carros a cada dia, para permitir ao jogador continuar correndo no dia seguinte. O jogador deve desviar de outros pilotos, ultrapassando 200 carros no primeiro dia, e 300 carros nos dias posteriores.', 'Activision', 'Atari 2600');


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Enduro" , style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),

            Image.asset(info.img , width: 270, height: 180,), //neve

            Text(info.desenvolvedora , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),

            Text(info.console , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),
          ]
        )
      )
    );
  }
}