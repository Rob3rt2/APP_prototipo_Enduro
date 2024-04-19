import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppEnduro (),
      
    );
  }
}
  class AppEnduro extends StatelessWidget{
    const AppEnduro({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
         
          'Enduro 1983'),
         leading:
       
        IconButton(
          icon: const Icon(Icons.ac_unit_rounded),
          tooltip: 'Enduro',
          onPressed:(){
             ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('LM83')));
          }
          ),
      
      
      )
      body: const Center(
        child: Column( 
        
          children: <Widget>[

        ]
        )
       
      )
    );
  
  }     
  }
  