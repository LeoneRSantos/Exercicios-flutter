import 'package:ex12/widgets/botao_calcular.dart';
import 'package:ex12/widgets/botao_recalcular.dart';
import 'package:ex12/widgets/cartao_principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TelaResultado extends StatelessWidget {
  TelaResultado({Key? key, required this.imc}) : super(key: key);

  final double imc;
  TextStyle criaEstiloTexto(Color cor){
    return TextStyle(color: cor, fontWeight: FontWeight.bold, fontSize: 30);
  }

  // TODO texto
  String msg = '';

  Text classificacaoIMC() {
    if (imc < 18.5) {
      msg = 'DÁ PRA COMER MAIS UM TIQUIN';
      return Text(
        'MAGREZA',
        style: criaEstiloTexto(Colors.green),
      );
    } else if (imc >= 18.5 && imc < 25.0) {
      msg = 'TÁ NICE';
      return Text(
        'NORMAL',
        style: criaEstiloTexto(Colors.green),
      );
    } else if (imc >= 25.0 && imc < 30.0) {
      msg = 'TA ENGORDANDO AE';
      return Text(
        'SOBREPESO',
        style: criaEstiloTexto(Colors.yellow),
      );
    } else if (imc >= 30.0 && imc < 40.0) {
      msg = 'TA GORDO PRA PORRA BICHO';
      return Text(
        'OBESIDADE',
        style: criaEstiloTexto(Colors.orange),
      );
    } else if (imc >= 40.0) {
      msg = 'VAI DE BASE JAJA';
      return Text(
        'OBSESIDADE GRAVE',
        style: criaEstiloTexto(Colors.red),
      );
    } else {
      return Text(
        'WTF',
        style: criaEstiloTexto(Colors.blue),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF111639),
        title: const Center(child: Text('CALCULADORA IMC')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [ 
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Resultado'.toUpperCase(), 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, 
            color: Color(0xFFfdfcfe)),),
          ),

          CartaoPrincipal(conteudo: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ 
              classificacaoIMC(),
              Text(imc.toStringAsFixed(1), 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0, color: Color(0xFFfffeff)),),  
              Text(msg, 
                style: TextStyle(fontSize: 20.0, color: Color(0xFFfffeff)),),

            ],
          )
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BotaoReCalcular(),
          ),
        ],
      ),
     
    );
  }
}