import 'package:flutter/material.dart';
import 'package:flutter_application_1/game.dart';
import 'package:flutter_application_1/gameplay.dart';

void imagepag() {
  runApp(const ImagePag());
}

class ImagePag extends StatelessWidget {
  const ImagePag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagens',
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
            (context) => const GameplayPag()),);},
            icon: const Icon(Icons.ondemand_video,),
            color: const Color.fromARGB(255, 226, 204, 0),)
        ]
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('img/end.png',width: 220,height: 220,),
          ]
        )
      )
    );
  }
}