import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GameplayPag extends StatefulWidget {
  const GameplayPag({super.key});

  @override
  State<GameplayPag> createState() => _GameplayPag();
}

class _GameplayPag extends State<GameplayPag>{

late VideoPlayerController _videoPlayerController;

@override
void initState(){
  super.initState();
  _videoPlayerController = VideoPlayerController.asset(
    'video/enduro.mp4'
    )..initialize().then((_){
      setState((){

      });
    });
} //define o estado do vídeo

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _videoPlayerController.value.isInitialized ?
        Column(
          children: [
            AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController)), //define o tamanho do vídeo, sendo o su tamanho original

              Row(
                mainAxisAlignment: MainAxisAlignment.center, //define o alinhamento do vídeo
                children: [
                  ElevatedButton(
                    onPressed: (){
                      _videoPlayerController.pause();
                    },
                    child: const Icon(Icons.pause, color: Color.fromARGB(255, 75, 73, 206),)
                    ),
                  const Padding(padding: EdgeInsets.all(2),),
                  ElevatedButton(
                    onPressed: (){
                      _videoPlayerController.play();
                    },
                    child: const Icon(Icons.play_arrow, color: Color.fromARGB(255, 75, 73, 206),),
                    ),
                ],
              ),
              const SizedBox(
                width: 380,
                child: Text('O vídeo foi retirado do YouTube, o autor original é o canal RickyC.',
                style: TextStyle(fontFamily: 'PixelifySans', fontSize: 10),)
              )
          ] 
        ) : Container()
      )
    );
  }
}