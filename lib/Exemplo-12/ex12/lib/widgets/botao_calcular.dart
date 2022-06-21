import 'package:ex12/pages/tela_resultado.dart';
import 'package:flutter/material.dart';

class BotaoCalcular extends StatelessWidget {
  const BotaoCalcular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 60, 
      decoration: const BoxDecoration(color: Color(0xFFFD0225),),
      child: TextButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => TelaResultado()),
        );
      },  
        child: Text('calcular'.toUpperCase(), style: TextStyle(color: Color(0xFFfdfcfe)),)),
    );
  }
}