import 'package:flutter/material.dart';

class GamePag extends StatelessWidget {
  const GamePag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('img/endurodia.jpg', width: 310, height: 200,),
          const SizedBox (
            width: 380,
            child: Text('Enduro é um jogo feito com resolução reduzida em 8-Bits onde o carro do jogador é branco e o dos adversários são coloridos. No jogo, existem os períodos do dia e alguns eventos próprios, como é possível ver a seguir:', 
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 13,)),
          ),
          const SizedBox(
            width: 380,
            child: Text('Durante o jogo, o player passa por um dia inteiro e isso é representado com a mudança gradual nas cores do céu, que vão ficando em um tom mais alaranjado e mais escuro, simulando o pôr-do-sol.  (Veja a imagem no início desta página e a imagem "Escurecer" na parte de imagens)',
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 12,),),
          ),
          const SizedBox(
            width: 380,
            child: Text('No período da manhã, existe um evento de nevasca, onde a tela fica toda branca e fica mais difícil de ver a pista e o carro do jogador.  (Veja a imagem "Neve" na parte de imagens)',
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 12,),),
          ),
          const SizedBox(
            width: 380,
            child: Text('E no período noturno, a tela fica toda preta, dando destaque para o carro do jogador, e é possível ver apenas os faróis traseiros dos carros adversários, e tem o evento de neblina, onde a tela fica acinzentada e o campo de visão diminiui.  (Veja a imagem "Noite e neblina" na parte de imagens)',
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 12,),),
          ),
          const SizedBox(
            width: 380,
            child: Text('Para um melhor entendimento de como o jogo é, assista a gameplay na página de Gameplay.',
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 12,),),
          ),
          ]
        )
      )
    );
  }
}