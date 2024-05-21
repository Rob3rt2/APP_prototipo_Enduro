import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
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
        backgroundColor: const Color.fromARGB(255, 3, 0, 177),
        leading:
        const Icon(Icons.sports_motorsports_rounded,
        color: Color.fromARGB(255, 226, 204, 0)),
        actions: const Icon(Icons.sports_esports,),
        ), //fim do appbar 

      body: Center(
        child: Column( 
          children: 
          <Widget>[
            Image.asset('img/logo2.jpg',width: 220,height: 220,),
            Image.asset('img/end.jpg', width: 650, height: 280),
            Container(
              width: 380,
              decoration: const BoxDecoration(borderRadius:BorderRadius.vertical()),
              child: const Text('Enduro é um jogo de corrida desenvolvido pela Activision edistribuido para Atari 2600.',
              style: TextStyle(fontFamily:AutofillHints.photo)
        ),
       ), //fim do container
        ] 
      ),
        ) //fim do child
      ) //fim do body
    );
  }     
  }
  