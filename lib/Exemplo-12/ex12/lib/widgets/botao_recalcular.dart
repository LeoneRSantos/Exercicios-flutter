import 'package:ex12/pages/tela_principal.dart';
import 'package:flutter/material.dart';

class BotaoReCalcular extends StatelessWidget {
  const BotaoReCalcular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 60, 
      decoration: const BoxDecoration(color: Color(0xFFFD0225),),
      child: TextButton(onPressed: (){
        Navigator.of(context).pop();
      },  
        child: Text('re-calcular'.toUpperCase(), style: TextStyle(color: Color(0xFFfdfcfe)),)),
    );
  }
}