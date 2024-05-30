import 'package:flutter/material.dart';
import 'package:flutter_application_1/gameplay.dart';
import 'package:flutter_application_1/image.dart';

void gamepag() {
  runApp(const GamePag());
}

class GamePag extends StatelessWidget {
  const GamePag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre Enduro',
        style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700, color:Color.fromRGBO(255, 255, 255, 1),)
        ),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 75, 73, 206),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,
            MaterialPageRoute(builder:
            (context) => const GameplayPag()),);},
          icon: const Icon(Icons.ondemand_video,),
          color: const Color.fromARGB(255, 226, 204, 0),),
          IconButton(onPressed: (){Navigator.push(context,
            MaterialPageRoute(builder:
            (context) => const ImagePag()),);},
          icon: const Icon(Icons.image_outlined,),
          color: const Color.fromARGB(255, 226, 204, 0),),
        ]
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('img/endurodia.jpg', width: 310, height: 200,),
          const SizedBox (
            width: 380,
            child: Text('Enduro é um jogo feito com resolução reduzida em 8-Bits, pois os consoles da época não eram potentes e não aguentavam muita coisa.', 
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 15,)),
          ),
          const SizedBox(
            width: 380,
            child: Text('Durante o jogo, o player passa por um dia inteiro e isso é representado com a mudança gradual nas cores do céu, que vão ficando em um tom mais alaranjado, simulando o pôr-do-sol.',
            style: TextStyle(fontFamily: 'PixelifySans', fontSize: 15,),),
          ),
          ]
        )
      )
    );
  }
}