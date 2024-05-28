import 'package:flutter/material.dart';

void gamepag() {
  runApp(const GamePag());
}

class GamePag extends StatelessWidget {
  const GamePag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enduro',
        style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1),)
        ),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 75, 73, 206),
      ),
      body: Center(
        child: Column(
          children:
          [const Text('Game',
          style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700, fontSize: 20)),
          Image.asset('img/endurodia.jpg', width: 320, height: 210,),
          const SizedBox (
            width: 380,
            child: Text('Enduro é um jogo feito em 8-Bit, pois era o que o console conseguia suportar.', 
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 15,)),
            )
          ]
          )
    )
    );
  }
}