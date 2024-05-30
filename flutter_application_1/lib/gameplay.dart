import 'package:flutter/material.dart';
import 'package:flutter_application_1/game.dart';
import 'package:flutter_application_1/image.dart';

void gameplaypag() {
  runApp(const GameplayPag());
}

class GameplayPag extends StatelessWidget {
  const GameplayPag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gameplay',
        style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700, color:Color.fromRGBO(255, 255, 255, 1),)
        ),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 75, 73, 206),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,
            MaterialPageRoute(builder:
            (context) => const GamePag()),);},
            icon: const Icon(Icons.sports_esports,),
            color: const Color.fromARGB(255, 226, 204, 0),),
          IconButton(onPressed: (){Navigator.push(context,
            MaterialPageRoute(builder:
            (context) => const ImagePag()),);},
            icon: const Icon(Icons.image_outlined,),
            color: const Color.fromARGB(255, 226, 204, 0),),
        ]
      ),
      body: Center(
        child: Column (
          children: [
            Image.asset('img/end.jpg',width: 220,height: 220,),
          ]
        )
      )
    );
  }
}