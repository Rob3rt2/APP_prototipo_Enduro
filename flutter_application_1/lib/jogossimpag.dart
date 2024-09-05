import 'package:flutter/material.dart';
import 'package:flutter_application_1/jogossim.dart';

class JogosSimPag extends StatefulWidget{
  const JogosSimPag({super.key,});
  
  @override
  State<JogosSimPag> createState() => _JogosSimpag();
}

class _JogosSimpag extends State<JogosSimPag> {
  int index = 0;

  List<JogoSimilar> jogossimilares = [
    const JogoSimilar(
      'Top Gear',
      'img/topgear.png',
      'É um jogo de corrida e tals',
      'Gremlin Graphics',
      'Super Nintendo Entertainment System (SNES)',
      'Um jogador ou multijogador',
      'Corrida'
    ),
    const JogoSimilar(
      'Excitebike',
      'img/excitebike.png',
      'jogo de motocrossing',
      'desenvolvedora',
      'Nintendo Entertainment System (NES), Wii e Wii U',
      'Um jogador',
      'Corrida'
    ),
  ];

  void avancarJogoSim(){
    index++;
  }

  void voltarJogoSim(){
    index--;
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: (
        ElevatedButton(
          onPressed: (){
            avancarJogoSim();
          },
          child: const Text('Avançar'))
    ),)
    );
  }
}