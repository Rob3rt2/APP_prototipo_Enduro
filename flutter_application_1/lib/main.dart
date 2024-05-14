import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
  
}
class ThemeDataExampleApp extends StatelessWidget {
  const ThemeDataExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      brightness: MediaQuery.platformBrightnessOf(context),
      seedColor:  kDefaultIconDarkColor,
    );
    return MaterialApp(
      title: 'ThemeData Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorScheme.tertiary,
    
        ),
      ),
      
    );
  }
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
     Theme.of(context);
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
      
      
    


    
      body: Center(
        
        child: Column( 
    
          children: <Widget>[
        
                
                Image.asset(
      'img/logo.jpg',width: 220,height: 220,),
  
              
            

        ]
        )
       
      )
    )
    );
  
  }     
  }
  