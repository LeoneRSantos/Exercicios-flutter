import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Tecla extends StatelessWidget {
  const Tecla({Key? key, required this.cor}) : super(key: key);

  final Color cor;


  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      color: cor,

      
    ));
  }
}

