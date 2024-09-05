import 'package:flutter/material.dart';
import 'package:flutter_application_1/jogossim.dart';

class JogosSimPag extends StatefulWidget{
  const JogosSimPag({super.key,});
  
  @override
  State<JogosSimPag> createState() => _JogosSimpag();
}

void main (List<String> args){
  String nome = '';
  String image = '';
  String desc = '';
  String dev = '';
  String consol = '';
  String mode = '';
  String genre = '';

  JogoSimilar topgear = JogoSimilar(
    nome = "Top Gear",
    image = "img/topgear.png",
    desc = "Top Gear é um jogo de corrida e blablabla",
    dev = "Gremlin Graphics",
    consol = "Super Nintendo Entertainment System",
    mode = "Um jogador ou multijogador",
    genre = "Corrida",
  );
  
}

class _JogosSimpag extends State<JogosSimPag> {
  

  @override
  Widget build(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: (
        Text('a')
    ),)
    );
  }
}