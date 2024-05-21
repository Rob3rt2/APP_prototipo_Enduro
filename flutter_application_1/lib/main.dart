import 'package:flutter/material.dart';
import 'package:flutter_application_1/game.dart';
import 'package:flutter_application_1/gameplay.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold (
      appBar: AppBar(
        title: const Text('Enduro',
        style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1),)
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 73, 206),
        leading:
        const Icon(Icons.sports_motorsports_rounded, color: Color.fromARGB(255, 226, 204, 0),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder:
            (context) => const GamePag()),);}, 
            icon: const Icon(Icons.sports_esports,),
            color: const Color.fromARGB(255, 226, 204, 0),),
          IconButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder:
            (context) => const GameplayPag()),);}, 
            icon: const Icon (Icons.ondemand_video,), 
            color: const Color.fromARGB(255, 226, 204, 0),)
        ]
        ), //fim do appbar 

      body: Center(
        child: Column( 
          children: 
          <Widget>[
            Image.asset('img/logo2.jpg',width: 150,height: 150,),
            Image.asset('img/end.jpg', width: 670, height: 200),
            Container(
              width: 380,
              decoration: const BoxDecoration(borderRadius:BorderRadius.vertical()),
              child: const Text('Enduro é um jogo de corrida desenvolvido pela Activision e distribuido para Atari 2600 em 1983. Ele retrata uma corrida de resistência que dura 24 horas onde o piloto (jogador) tem o objetivo de ultrapassar diversos carros, superando obstáculos do clima e do dia e noite.',
              style: TextStyle(fontFamily: 'PixelifySans', fontSize: 15,),
        ),
       ), //fim do container
        ] 
      ),
        ) //fim do child
      ) //fim do body
    );
  }     
  }
  