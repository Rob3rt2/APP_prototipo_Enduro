import 'package:flutter/material.dart';
import 'package:flutter_application_1/jogosimilar.dart';

class JogoSimPag extends StatefulWidget{
  const JogoSimPag({super.key,});
  
  @override
  State<JogoSimPag> createState() => _JogoSimpag();
}

class _JogoSimpag extends State<JogoSimPag> {

  int index = 0;

  List<JogoSimilar> jogossimilares = [
    const JogoSimilar(
      'Top Gear',
      'img/topgear.png',
      'É um jogo de corrida onde o jogador passa disputa pelo pódio (que consta com 5 [cinco] lugares) em percursos espalhados por 8 países para passar de nível.',
      'Gremlin Graphics.',
      'Super Nintendo Entertainment System (SNES).',
      'Um jogador ou multijogador.',
      'Jogo eletrônico de corrida.'
    ),
    const JogoSimilar(
      'Excitebike',
      'img/excitebike.png',
      'Jogo de motocrossing da Nintendo onde o jogador pode jogar sozinho ou com outros personagens em uma corrida contra o relógio, sendo necessário velocidade e estabilidade.',
      'Nintendo.',
      'Nintendo Entertainment System (NES), Wii e Wii U.',
      'Um jogador.',
      'Jogo eletrônico de corrida.'
    ),
    const JogoSimilar(
      'World Enduro Rally',
      'img/worldendurorally.png',
      'Um jogo com direção única e visão lateral onde o jogador passa por vários cenários e precisa desviar de obstáculos.',
      'GraphicDNA',
      'Xbox One, Microsoft Windows',
      'Um jogador',
      'Jogo eletrônico de corrida, Jogo eletrônico de plataforma, Indie, Corrida, Simulação, Esportes.'
    ),
    const JogoSimilar(
      'Mach Rider',
      'img/machrider.png',
      'É um jogo de corrida em que o jogador em 4 (três) modos de jogo para escolher: Fighting Course (onde o jogador precisa matar seus inimigos enquanto passa por uma pista sinuosa), Endurance Course (onde o jogador precisa sobreviver o máximo possível), Solo Course (onde a pista não tem inimigos) e Design (onde o jogador monta sua própria pista)',
      'Nintendo Research & Development 2, Nintendo, HAL Laboratory',
      'Wii, Nintendo Entertainment System (NES), Arcade, Wii U, Nintendo 3DS',
      'Um jogador',
      'Jogo eletrônico de corrida, Jogo eletrônico de tiro, Jogo de combate em veículos'
    ),
    const JogoSimilar(
      'Super Monaco GP',
      'img/smonacogp.png',
      'Super Monaco GP é um simulador de Fórmula 1, onde o jogador precisa se qualificar em um circuito curto para depois competir na corrida principal que possui 3 voltas (sua continuação teve uma parceria com Ayrton Senna).',
      'Sega',
      'Mega Drive, Game Gear, Arcade, entre outros',
      'Um jogador',
      'Jogo eletrônico de corrida'
    )
  ];

  avancarJogoSim(){
    setState(() {
      index = index+1;
    });
    if(index > 4){
      index = 0;
    }
  }

  voltarJogoSim(){
    setState(() {
      index = index-1;
    });
    if (index <= -1){
      index = 4;
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column (
        children: [
          Text(jogossimilares[index].titulo, style: const TextStyle(fontFamily: "PixelifySans", fontWeight: FontWeight.w700, fontSize: 20), textAlign: TextAlign.center,),
          Image.asset(jogossimilares[index].img, height: 187, width: 270,),
          Text(jogossimilares[index].descricao, style: const TextStyle(fontFamily: "PixelifySans", fontSize: 15), textAlign: TextAlign.center,),
          Text(jogossimilares[index].desenvolvedora, style: const TextStyle(fontFamily: "PixelifySans", fontSize: 15), textAlign: TextAlign.center,),
          Text(jogossimilares[index].console, style: const TextStyle(fontFamily: "PixelifySans", fontSize: 15), textAlign: TextAlign.center,),
          Text(jogossimilares[index].genero, style: const TextStyle(fontFamily: "PixelifySans", fontSize: 15), textAlign: TextAlign.center,),
          Text(jogossimilares[index].modo, style: const TextStyle(fontFamily: "PixelifySans", fontSize: 15), textAlign: TextAlign.center,),
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      voltarJogoSim();
                    },
                    child: const Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 75, 73, 206))
                  ),
                  ElevatedButton(
                    onPressed: (){
                      avancarJogoSim();
                    },
                    child: const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 75, 73, 206))
                  ),
                  const Padding(padding: EdgeInsets.all(2),),
                  ],
              ),
      ]),
    )
  );
  }
}