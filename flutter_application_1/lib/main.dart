
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1), )

),
centerTitle: true,


backgroundColor: const Color.fromARGB(255, 3, 0, 177),

leading:



const Icon(Icons.sports_motorsports_rounded,
color: Color.fromARGB(255, 226, 204, 0))


),
      
      
    


    
      body: const Center(
        child: Column( 
      
          children: <Widget>[
Image(image: NetworkImage(''))
  
        ]
        )
       
      )
    )
    );
  
  }     
  }
  