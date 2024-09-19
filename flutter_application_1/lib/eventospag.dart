import 'package:flutter/material.dart';
class Evento{
  final String nome;
  final String img;
  final String descricao;

  const Evento(
    this.nome,
    this.img,
    this.descricao
  );
}

class EventosPag extends StatelessWidget {
   const EventosPag({super.key});

 final Evento neve = const Evento('Neve', 'img/enduroneve.jpg', 'Essa é a fase que o Enduro reproduz para parece uma fase com neve.');

 final Evento escurecer = const Evento('Escurecer', 'img/end.png', 'Essa é a representação do Enduro para uma fase a noite');

 final Evento noite = const Evento('Noite com neblina', 'img/enduronoite.jpg', 'Essa é a representação do Enduro para uma fase a noitecom névoa');
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text( neve.nome , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),

            Image.asset(neve.img , width: 270, height: 180,), //neve

            Text(neve.descricao , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),

            Text( escurecer.nome , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),

            Image.asset( escurecer.img , width: 240, height: 150,), //escurecendo

            Text( escurecer.descricao , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),

            Text( noite.nome , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),

            Image.asset( noite.img , width: 240, height: 150,), //noite com neblina

             Text( noite.descricao , style: const TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700),),
          ]
        )
      )
    );
  }
}