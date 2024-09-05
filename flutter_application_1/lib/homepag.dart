import 'package:flutter/material.dart';

class HomePag extends StatelessWidget{
  const HomePag ({super.key,});

  @override
  Widget build(BuildContext context){
  return Scaffold(
    body: Center(
        child: Column( 
          children: 
          <Widget>[
            Image.asset('img/logo.jpg',width: 150,height: 150,),
            Image.asset('img/end.jpg', width: 670, height: 200),
            Container(
              width: 380,
              decoration: const BoxDecoration(borderRadius:BorderRadius.vertical()),
              child: const Text('Enduro é um jogo de corrida desenvolvido pela Activision e distribuido para Atari 2600 em 1983. Ele retrata uma corrida de resistência que dura 24 horas onde o piloto (jogador) tem o objetivo de ultrapassar diversos carros, superando obstáculos do clima e do dia e noite.',
              style: TextStyle(fontFamily: 'PixelifySans', fontSize: 15,),
        ),
       ), //fim do container
        ] 
      ), //fim da child
        ) //fim do body
  );
  }
}