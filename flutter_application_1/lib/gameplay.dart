import 'package:flutter_application_1/main.dart';
import 'package:flutter/material.dart';

void gameplaypag() {
  runApp(const GameplayPag());
}

class GameplayPag extends StatelessWidget {
  const GameplayPag({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enduro',
        style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1),)
        ),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 3, 0, 177),
      ),
      body: Center(child: Column(children:
      [const Text("Gameplay"),
      Image.asset('img/end.jpg',width: 220,height: 220,),
      ]
      )
    )
    );
  }
}