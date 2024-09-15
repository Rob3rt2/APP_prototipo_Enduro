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

  avancarJogoSim(){
    index = index+1;
  }

  voltarJogoSim(){
    index = index-1;
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column ( children: [
        Text(jogossimilares[index].titulo),
        Image.asset(jogossimilares[index].img),
        Text(jogossimilares[index].descricao),
        Text(jogossimilares[index].desenvolvedora),
        Text(jogossimilares[index].console),
        Text(jogossimilares[index].genero),
        Text(jogossimilares[index].modo),
        ElevatedButton(
          onPressed: (){
            avancarJogoSim();
          },
          child: const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 75, 73, 206))),
          ElevatedButton(
          onPressed: (){
            voltarJogoSim();
          },
          child: const Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 75, 73, 206))),
      ]),
    )
  );
  }
}