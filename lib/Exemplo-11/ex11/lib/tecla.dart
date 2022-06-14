import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Tecla extends StatelessWidget {
  Tecla({Key? key, required this.cor, required this.numero}) : super(key: key);

  final Color cor;
  final int numero;
  final player = AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(onPressed:(() async{
        await player.play(AssetSource('sounds/note$numero.wav'));
      }) , child: Container(color: cor,),
      ),
    );
  }
}

