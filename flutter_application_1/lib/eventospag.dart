import 'package:flutter/material.dart';

class EventosPag extends StatelessWidget {
  const EventosPag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Neve.', style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),
            Image.asset('img/enduroneve.jpg', width: 270, height: 180,), //neve
            const Text('Escurecer.', style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),
            Image.asset('img/end.png', width: 240, height: 150,), //escurecendo
            const Text('Noie com neblina.', style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),
            Image.asset('img/enduronoite.jpg', width: 240, height: 150,), //noite com neblina
          ]
        )
      )
    );
  }
}