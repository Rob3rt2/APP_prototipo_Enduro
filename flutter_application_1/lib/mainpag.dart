import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepag.dart';
import 'package:flutter_application_1/gamepag.dart';
import 'package:flutter_application_1/gameplaypag.dart';
import 'package:flutter_application_1/eventospag.dart';
import 'package:flutter_application_1/jogossimpag.dart';

void main() {
  runApp(const MaterialApp (title: "App",
      home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold (
      appBar: AppBar(
        title: const Text('Enduro',
        style: TextStyle(fontFamily: 'PixelifySans', fontWeight: FontWeight.w700, color: Color.fromRGBO(255, 255, 255, 1),)
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 75, 73, 206),
        leading:
        const Icon(Icons.sports_motorsports_rounded, color: Color.fromARGB(255, 226, 204, 0),),
        ), //fim do appbar
        
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //define que a BottomnavigationBar pode ter mais do que 3 itens
        fixedColor: const Color.fromARGB(255, 209, 209, 209),
        backgroundColor: const Color.fromARGB(255, 75, 73, 206),
        currentIndex: _opcaoSelecionada,
        onTap: (opcao){
          setState(() {
            _opcaoSelecionada = opcao;
          }); //define o estado da BottomNavigationBar de acordo com a opção que foi selecionada
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Sobre o jogo'),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Eventos'),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: 'Jogos Similares'),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_rounded),
            label: 'Gameplay'),
        ], 
      ),

      body: IndexedStack(
        index: _opcaoSelecionada,
        children: const <Widget>[
          HomePag(),
          GamePag(),
          EventosPag(),
          JogosSimPag(),
          GameplayPag(),
        ],
      )
    )
    );
  }     
}