import 'dart:math';

import 'package:ex12/pages/tela_resultado.dart';
import 'package:flutter/material.dart';

class BotaoCalcular extends StatelessWidget {
  BotaoCalcular({Key? key, required this.peso, required this.altura}) : super(key: key);

  late double resultadoImc;
  late double imc;
  final int peso;
  final int altura;

  double calcularImc(){
    imc = (peso/pow(altura/100, 2));
    debugPrint('Peso: $peso, altura: $altura, calculado: $imc');
    return imc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(height: 60, 
      decoration: const BoxDecoration(color: Color(0xFFFD0225),),
      child: TextButton(onPressed: (){
        resultadoImc = calcularImc();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => TelaResultado(imc: resultadoImc,)),
        );
      },  
        child: Text('calcular'.toUpperCase(), style: TextStyle(color: Color(0xFFfdfcfe)),)),
    );
  }
}